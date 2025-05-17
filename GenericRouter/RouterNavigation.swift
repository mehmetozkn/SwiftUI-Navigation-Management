//
//  Router.swift
//  GenericRouter
//
//  Created by Mehmet Özkan on 9.03.2025.
//

import SwiftUI

final class Router: ObservableObject {
    @Published var path = NavigationPath()

    func navigate(to route: NavigationRoute) {
        path.append(route)
    }
    
    func navigateBack() {
        path.removeLast()
    }
    
    func navigateToRoot() {
        path.removeLast(path.count)
    }
    
    func popToView(count: Int) {
        path.removeLast(count)
    }
}
