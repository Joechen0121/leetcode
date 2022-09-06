class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        
        if matrix.count == 0 || matrix[0].count == 0 {
            return false
        }
        
        var rows = matrix.count
        var cols = matrix[0].count
        
        var start = 0
        var end = rows*cols - 1
        
        while start <= end {
            let mid = (start + end)/2
            let midValue = matrix[mid/cols][mid%cols]
            
            if midValue < target {
                start = mid + 1
            }
            else if midValue > target {
                end = mid - 1
            }
            else {
                return true
            }
        }
        
        return false
    }
}
