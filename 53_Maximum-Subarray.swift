class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        
        if nums.count == 0 {
            return 0
        }
        else if nums.count == 1 {
            return nums[0]
        }
        
        // dp[i]: sum of i number
        var dp = Array(repeating: -Int.max, count: nums.count)
        var result = nums[0]
        
        // initialize
        dp[0] = nums[0]
        
        for i in 1..<nums.count {
            dp[i] = max(dp[i - 1] + nums[i], nums[i])
            if result < dp[i] {
                result = dp[i]
            }
        }
        
        return result
    }
}
