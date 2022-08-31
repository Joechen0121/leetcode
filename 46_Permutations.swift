class Solution {
    var result = [[Int]]()
    var path = [Int]()
    
    func backtracking(_ nums: [Int], _ used: inout [Bool]) {
        
        if path.count == nums.count {
            result.append(path)
            return
        }
        
        for i in 0..<nums.count {
            if used[i] == false {
                path.append(nums[i])
                used[i] = true
                backtracking(nums, &used)
                used[i] = false
                path.removeLast()
            }
        }
    }
    
    func permute(_ nums: [Int]) -> [[Int]] {
        
        var used = Array(repeating: false, count: nums.count)
        backtracking(nums, &used)
        
        return result
    }
}
