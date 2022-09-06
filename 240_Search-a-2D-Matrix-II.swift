class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        
        var row = 0
        var col = matrix[0].count-1
        
        while row < matrix.count && col >= 0 {
            if matrix[row][col] < target {
                row += 1
            }   
            else if matrix[row][col] > target {
                col -= 1
            }
            else {
                return true
            }
        }
        
        return false
    }
}
