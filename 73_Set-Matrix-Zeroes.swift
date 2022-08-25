class Solution {
    func setZeroes(_ matrix: inout [[Int]]) {
        
        var rowArray = [Int]()
        var colArray = [Int]()

        // Check where is 0
        for row in 0..<matrix.count {
            for col in 0..<matrix[0].count {
                // record row, col position
                if matrix[row][col] == 0 {
                    rowArray.append(row)
                    colArray.append(col)
                }
            }
        }

        // Set to 0
        while !rowArray.isEmpty || !colArray.isEmpty {
            let rowPos = rowArray.removeFirst()
            let colPos = colArray.removeFirst()

            //Set row to 0
            for col in 0..<matrix[0].count {
                matrix[rowPos][col] = 0
            }
            //Set col to 0
            for row in 0..<matrix.count {
                matrix[row][colPos] = 0
            }
        }      
    }
}
