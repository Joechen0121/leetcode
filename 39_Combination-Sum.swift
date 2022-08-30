class Solution {
    
    var result = [[Int]]()
    var path = [Int]()
    var sum = 0
    
    func backtracking(_ candidates: [Int], _ target: Int, _ path: inout [Int], _ startIndex: Int, _ sum: inout Int) {
        
        if sum > target {
            return
        }
        
        if sum == target {
            result.append(path)
            return 
        }
        
        if startIndex > candidates.count {
            return 
        }
        
        for i in startIndex..<candidates.count {
            sum += candidates[i]
            path.append(candidates[i])
            backtracking(candidates, target, &path, i, &sum)
            path.removeLast()
            sum -= candidates[i]
        }
    }
    
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        
        backtracking(candidates, target, &path, 0, &sum)
        
        return result
    }
}
