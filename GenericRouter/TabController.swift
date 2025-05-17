//
//  TabController.swift
//  GenericRouter
//
//  Created by Mehmet Özkan on 15.05.2025.
//

import SwiftUI

enum TabController: Int, CaseIterable, Identifiable {
    case home
    case profile

    var id: Int { rawValue }

    var title: String {
        switch self {
        case .home: "Home"
        case .profile: "Profile"
        }
    }

    var systemImage: String {
        switch self {
        case .home: "music.note.house.fill"
        case .profile: "movieclapper.fill"
        }
    }

    @ViewBuilder
    var view: some View {
        switch self {
        case .home:
            HomeView()
        case .profile:
            ProfileView()
        }
    }
}
