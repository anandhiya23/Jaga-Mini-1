//
//  Theme.swift
//  Scrumdinger
//
//  Created by Bintang Anandhiya on 28/03/24.
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
    case lightgray
    case orangeGray
    
    var accentColor: Color {
        switch self {
        case .orangeGray, .lightgray, .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow: return .black
            case .indigo, .magenta, .navy, .oxblood, .purple: return .white

        }
    }
    
    var mainColor: Color {
            Color(rawValue)
        }
}
