//
//  MusicView.swift
//  GenericRouter
//
//  Created by Mehmet Özkan on 9.03.2025.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject private var router: Router
    
    var body: some View {
        NavigationStack(path: $router.path) {
            VStack(spacing: 20) {
                Button("Go To First Screen") {
                    router.navigate(to: .first)
                }
                
                Button("Go To Second Screen with params") {
                    router.navigate(to: .second(params: "Some params"))
                }
            }
            .navigationDestination(for: NavigationRoute.self) {
                $0.destinationView
            }

        }
        .environmentObject(router)
    }
}

#Preview {
    HomeView()
}
