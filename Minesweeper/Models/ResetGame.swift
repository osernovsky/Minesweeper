//
//  ResetGame.swift
//  Minesweeper
//
//  Created by Sergey Dubrovin on 01.02.2025.
//

extension MinesweeperViewModel {
    
    func resetGame() {
        
        isGameOver = false
        isWin = false
        board = Array(repeating: Array(repeating: Cell(), count: sizeCol), count: sizeRow)
        
        var minesPlaced: Int = 0
        while minesPlaced < minesCount {
            let x: Int = Int.random(in: 0..<sizeCol)
            let y: Int = Int.random(in: 0..<sizeRow)
            if !board[y][x].isMine {
                board[y][x].isMine = true
                minesPlaced += 1
            }
        }
        
        for y in 0..<sizeRow {
            for x in 0..<sizeCol {
                if !board[y][x].isMine {
                    board[y][x].minesAround = countMinesAround(x: x, y: y)
                }
            }
        }
    }
}
