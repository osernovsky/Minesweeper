//
//  Cell.swift
//  Minesweeper
//
//  Created by Sergey Dubrovin on 01.02.2025.
//

import SwiftUI

struct Cell: Identifiable {
    var id = UUID()
    var isMine: Bool = false
    var isRevealed: Bool = false
    var isFlagged: Bool = false
    var minesAround: Int = 0
}
