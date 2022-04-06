//
//  Theme.swift
//  Scrumdinger
//
//  Created by Ray on 2022/4/5.
//

import SwiftUI

enum Theme: String {
    case bubblegum
    case buttercup
    case indigo
    case lavender
    case magenta
    case navy
    case orange
    case oxblood
    case periwinkle
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case yellow
    
    var accentColor: Color {
        switch self {
        case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow: return .black
        case .indigo, .magenta, .navy, .oxblood, .purple:
            return .white
        }
    }
    
    var mainColor: Color {
        switch self {
        case .yellow:
            return Color(UIColor.yellow)
        case .orange:
            return Color(UIColor.orange)
        case .poppy:
            return Color(UIColor.red)
        default:
            return Color(rawValue)
        }
    }
    
    var name: String {
        rawValue.capitalized
    }
}
