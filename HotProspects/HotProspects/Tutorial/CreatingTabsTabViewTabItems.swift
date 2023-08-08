//
//  CreatingTabsTabViewTabItems.swift
//  HotProspects
//
//  Created by Brandon Johns on 8/6/23.
//

import SwiftUI

struct CreatingTabsTabViewTabItems: View {
    
    @State private var selectedTab = "One"
    
    var body: some View {
        TabView (selection: $selectedTab) {
            Text("Tab 1")
                .onTapGesture {
                    selectedTab = "Two"
                }
                .tabItem {
                    Label("One", systemImage: "star")
                }
            Text("Tab 2")
                .tabItem {
                    Label("Two", systemImage: "circle")
                    
                }
                .tag("Two")
        }
    }
}

struct CreatingTabsTabViewTabItems_Previews: PreviewProvider {
    static var previews: some View {
        CreatingTabsTabViewTabItems()
    }
}
