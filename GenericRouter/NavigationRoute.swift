//
//  RoutingEnum.swift
//  GenericRouter
//
//  Created by Mehmet Özkan on 9.03.2025.
//

import SwiftUI

enum NavigationRoute: Hashable {
    case first
    case second(params: String)
    
    @ViewBuilder
    var destinationView: some View {
        switch self {
        case .first:
            First()
        case .second(let params):
            Second(param: params)
        }
    }
}


