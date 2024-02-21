//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Matt Watters on 2024-02-19.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
