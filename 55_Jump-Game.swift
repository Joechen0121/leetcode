class Solution {
    func canJump(_ nums: [Int]) -> Bool {
        
        var maxPosition = 0
        
        for i in 0..<nums.count {
            
            if i > maxPosition { return false }
            
            maxPosition = max(nums[i] + i, maxPosition)
        }
        
        return true
    }
}
