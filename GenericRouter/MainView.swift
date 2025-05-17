//
//  ContentView.swift
//  GenericRouter
//
//  Created by Mehmet Özkan on 9.03.2025.
//

import SwiftUI

struct MainView: View {
    @StateObject private var router = Router()
    @State private var selectedTab: TabController = .home

    var body: some View {
        TabView(selection: $selectedTab) {
            ForEach(TabController.allCases) { tab in
                tab.view
                    .environmentObject(router)
                    .tabItem {
                        Label(tab.title, systemImage: tab.systemImage)
                    }
                    .tag(tab)
            }
        }
        .onChange(of: selectedTab) { newTab in
            if newTab == .home {
                router.navigateToRoot()
            }
        }
    }
}

#Preview {
    MainView()
}


