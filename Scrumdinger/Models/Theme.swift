//
//  Theme.swift
//  Scrumdinger
//
//  Created by Ray on 2022/4/5.
//

import SwiftUI

enum Theme: String, CaseIterable, Identifiable {
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
        case .yellow, .bubblegum, .buttercup, .indigo, .lavender,
             .magenta:
            return Color(UIColor.yellow)
        case .navy, .oxblood, .periwinkle:
            return Color(UIColor.blue.withAlphaComponent(0.7))
        case .orange, .sky, .tan, .teal:
            return Color(UIColor.orange)
        case .poppy, .purple, .seafoam:
            return Color(UIColor.red)
        }
    }
    
    var name: String {
        rawValue.capitalized
    }
    
    var id: String {
        name
    }
}
