class Solution {
    func rob(_ nums: [Int]) -> Int {
        
        // DP
        
        if nums.count == 1 { 
            return nums[0] 
        }
        else if nums.count == 2 { 
            return max(nums[0], nums[1]) 
        }
        
        // dp[i]: max money, i: which day
        var dp = Array(repeating: -1, count: nums.count+1)

        // init
        dp[0] = 0
        dp[1] = nums[0]
        dp[2] = max(nums[0], nums[1])

        for i in 3...nums.count {
            dp[i] = max(dp[i-1], dp[i-2] + nums[i-1])
        }

        return dp[nums.count]
    }
}
