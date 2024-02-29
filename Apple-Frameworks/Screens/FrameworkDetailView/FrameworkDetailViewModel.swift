//
//  FrameworkDetailViewModel.swift
//  Apple-Frameworks
//
//  Created by Matt Watters on 2024-02-28.
//

import SwiftUI

final class FrameworkDetailViewModel: ObservableObject {
    let framework: Framework
    
    init(framework: Framework) {
        self.framework = framework
    }
}
