class Solution {
    var result = [[Int]]()
    var subset = [Int]()
    
    func backtracking(_ nums: [Int], _ startIndex: Int) {
        
        // stop condition
        if startIndex <= nums.count {
            result.append(subset)
        }
        
        // iterate and add to subset
        for i in startIndex..<nums.count {
            subset.append(nums[i])
            backtracking(nums, i+1)
            subset.removeLast()
        }
        
    }
    
    func subsets(_ nums: [Int]) -> [[Int]] {
        
        backtracking(nums, 0)
        
        return result
    }
}
