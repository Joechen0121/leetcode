class Solution {
    func lengthOfLIS(_ nums: [Int]) -> Int {
        
        if nums.count == 0 {
            return 0
        }
        else if nums.count == 1 {
            return 1
        }
        
        // dp[i]: 0 ~ i-1 longest length  
        var dp = Array(repeating: 1, count: nums.count)
        var res = 0
        
        for i in 1..<nums.count {
            for j in 0..<i {
                if nums[i] > nums[j] {
                    dp[i] = max(dp[i], dp[j] + 1)
                }
                if res < dp[i] {
                    res = dp[i]
                }
            }
        }
        
        return res
        
    }
}
