class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        
        var result = [[Int]]()
        
        // Sort each arr[0]
        var intervals = intervals.sorted{ $0[0] < $1[0] }
        
        result.append([intervals[0][0], intervals[0][1]])
        
        for row in 1..<intervals.count {
            let resultPrevious = result.last
            
            if resultPrevious![1] >= intervals[row][0] {
                var arr = result.removeLast()
                arr = [arr[0], max(arr[1], intervals[row][1])]
                result.append(arr)
            }
            else {
                result.append([intervals[row][0], intervals[row][1]])
            }
        }
        
        return result
        
    }
}
