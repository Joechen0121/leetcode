class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        
        // Rule check
        // row value
        // col value
        // square value
        
        var rowSet: [Set] = Array(repeating: Set<Character>(), count: 9)
        var colSet: [Set] = Array(repeating: Set<Character>(), count: 9)
        var squareSet: [Set] = Array(repeating: Set<Character>(), count: 9)
        
        for row in 0..<9 {
            for col in 0..<9 {
                
                if board[row][col] == "." {
                    continue
                }
                
                let square = (row/3) * 3 + col/3
                
                if rowSet[row].contains(board[row][col]) ||
                    colSet[col].contains(board[row][col]) ||
                    squareSet[square].contains(board[row][col]) {
                        return false
                    }
                
                rowSet[row].insert(board[row][col])
                colSet[col].insert(board[row][col])
                squareSet[square].insert(board[row][col])
            }
        }
        return true
    }
}
