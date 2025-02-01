//
//  Minesweeper.swift
//  Minesweeper
//
//  Created by Sergey Dubrovin on 01.02.2025.
//
import SwiftUI

class MinesweeperViewModel: ObservableObject {
    
    @Published var board: [[Cell]] = []
    @Published var isGameOver: Bool = false
    @Published var isWin: Bool = false
    
    var sizeCol: Int
    var sizeRow: Int
    var minesCount: Int
    
    init(sizeCol: Int, sizeRow: Int, mineCount: Int) {
        self.sizeCol = sizeCol
        self.sizeRow = sizeRow
        self.minesCount = mineCount
        resetGame()
    }
}
