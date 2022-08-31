class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        
        var result = [[Int]]()
        
        if numRows == 1 {
            return [[1]]
        }
        
        if numRows == 2 {
            return [[1], [1, 1]]
        }
        
        result = [[1], [1, 1]]
        
        for row in 2..<numRows {
            
            var col: Int = 0
            var arr = Array(repeating: 1, count: row+1)
            
            let resultLast = result.last!
            var resultLastCount = resultLast.count
            while col < resultLastCount-1 {
                arr[col+1] = resultLast[col] + resultLast[col+1]
                col += 1
            }
            
            result.append(arr)
        }
        
        return result
    }
}
