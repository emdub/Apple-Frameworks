//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Matt Watters on 2024-02-19.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(value: framework) {
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: framework))
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}
