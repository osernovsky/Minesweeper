//
//  TextColor.swift
//  Minesweeper
//
//  Created by Sergey Dubrovin on 02.02.2025.
//

import SwiftUI

func getTextColor(minesCount: Int) -> Color {
    switch minesCount {
    case 1:
        return .blue
    case 2:
        return .green
    default:
        return .red
    }
}
