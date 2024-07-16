//
//  NavigationSplitViewSwiftUIView.swift
//  SwiftUIBasic
//
//  Created by Yun Ni on 2024-07-16.
//

import SwiftUI

// NavigationSplitView -> iPad, MacOS, VisionOS

struct NavigationSplitViewSwiftUIView: View {
    var body: some View {
        NavigationSplitView {
            Color.red
        } detail: {
            Color.blue
        }

    }
}

#Preview {
    NavigationSplitViewSwiftUIView()
}
