//
//  TabBarItems.swift
//  CustomTabBar
//
//  Created by Jay Raval on 2024-03-18.
//

import Foundation
import SwiftUI

enum TabBarItems: Int, CaseIterable{
    case viewOne = 0
    case viewTwo
    case viewThree
    case viewFour
    
    var title: String {
        switch self {
        case .viewOne:
            return "Home"
        case .viewTwo:
            return "Favourite"
        case .viewThree:
            return "Messages"
        case .viewFour:
            return "Profile"
        }
    }
    
    var iconName: String {
        switch self {
        case .viewOne:
            return "house"
        case .viewTwo:
            return "heart"
        case .viewThree:
            return "message"
        case .viewFour:
            return "person"
        }
    }
}
