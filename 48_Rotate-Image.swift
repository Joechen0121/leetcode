class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        
        let rowLength: Int = matrix.count
        let colLength: Int = matrix[0].count
        
        //transpose
        for row in 0..<rowLength {
            for col in row..<colLength {
                let temp = matrix[row][col]
                matrix[row][col] = matrix[col][row]
                matrix[col][row] = temp
            }
        }
        
        // row 1 3 change
        for row in 0..<rowLength {
            for col in 0..<colLength/2 {
                let temp = matrix[row][col]
                matrix[row][col] = matrix[row][colLength-1-col]
                matrix[row][colLength-1-col] = temp
            }
        }
    }
}