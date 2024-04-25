class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var x = 0
        
        while x < 9 {
            var y = 0
            for _ in 0..<3 {
                
                var dict = [Character: Int]()
                for i in x..<x + 3 {
                    for j in y..<y + 3 {
                        if board[i][j] == "." {
                            continue
                        }
                        if dict[board[i][j]] != nil {
                            return false
                        }
                        dict[board[i][j]] = 1
                    }
                }
                y += 3
                dict = [Character: Int]()
            }
            
            x += 3
        }
        
        for row in 0..<9 {
            var dictCol = [Character: Int]()
            var dictRow = [Character: Int]()
            
            for col in 0..<9 {
                if board[row][col] != "." {
                    if dictCol[board[row][col]] != nil {
                        return false
                    }
                    dictCol[board[row][col]] = 1
                }
                
                if board[col][row] != "." {
                    if dictRow[board[col][row]] != nil {
                        return false
                    }
                    dictRow[board[col][row]] = 1
                }
            }
        }
        return true
    }
}

let sl = Solution()
let board: [[Character]] =
[[".",".","4",".",".",".","6","3","."],
 [".",".",".",".",".",".",".",".","."],
 ["5",".",".",".",".",".",".","9","."],
 [".",".",".","5","6",".",".",".","."],
 ["4",".","3",".",".",".",".",".","1"],
 [".",".",".","7",".",".",".",".","."],
 [".",".",".","5",".",".",".",".","."],
 [".",".",".",".",".",".",".",".","."],
 [".",".",".",".",".",".",".",".","."]]

print(sl.isValidSudoku(board))
