class Solution {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        
        guard matrix != nil else { return [] }
        
        var result: [Int] = [Int]()
        
        var count: Int = matrix.count * matrix[0].count
        
        var left: Int = 0
        var right: Int = matrix[0].count-1
        var top: Int = 0
        var bottom: Int = matrix.count-1
        
        while (result.count < count) {
            
            //left to right
            for i in stride(from: left, to: right+1, by: 1) where result.count < count {
                result.append(matrix[top][i])
            }
            top = top + 1
            
            // top to bottom
            for j in stride(from: top, to: bottom+1, by: 1) where result.count < count {
                result.append(matrix[j][right])
            }
            right = right - 1
            
            // right to left
            for i in stride(from: right, to: left-1, by: -1) where result.count < count {
                result.append(matrix[bottom][i])
            }
            bottom = bottom - 1
            
            // bottom to top
            for j in stride(from: bottom, to: top-1, by: -1) where result.count < count {
                result.append(matrix[j][left])
            }
            left = left + 1
            
        }
        
        return result
    }
}