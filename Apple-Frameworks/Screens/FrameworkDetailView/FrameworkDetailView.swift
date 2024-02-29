//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Matt Watters on 2024-02-19.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @ObservedObject var viewModel: FrameworkDetailViewModel
    
    var body: some View {
        VStack {
            FrameworkTitleView(framework: viewModel.framework)
            
            Text(viewModel.framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Link(destination: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com")!) {
                AFButton(title: "Learn More")
            }
            
//            Button {
//                viewModel.isShowingSafariView = true
//            } label: {
//                AFButton(title: "Learn More")
//            }
//            .fullScreenCover(isPresented: $viewModel.isShowingSafariView, content: {
//                SafariView(url: URL(string: viewModel.framework.urlString) ?? URL(string: "wwww.apple.com")!)
//            })
        }
    }
}

#Preview {
    FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: MockData.sampleFramework))
}
