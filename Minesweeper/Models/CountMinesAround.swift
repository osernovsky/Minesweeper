//
//  CountMinesAround.swift
//  Minesweeper
//
//  Created by Sergey Dubrovin on 01.02.2025.
//

extension MinesweeperViewModel {
    
    func countMinesAround(x: Int, y: Int) -> Int {
        
        var minesCount = 0
        
        for i in x - 1...x + 1 {
            for j in y - 1...y + 1 {
                
                if i >= 0, i < sizeRow, j >= 0, j < sizeCol {
                    if (i != x || j != y) && board[i][j].isMine {
                        minesCount += 1
                    }
                }
            }
        }
        return minesCount
    }
}
