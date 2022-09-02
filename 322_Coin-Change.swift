class Solution {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        
        // DP
        
        if amount == 0 { return 0 }
        
        // dp[i] = 個數, i = amount
        var dp = Array(repeating: Int.max, count: amount+1)
        dp[0] = 0
        
        for i in 1...amount {
            for j in 0..<coins.count  {
                if coins[j] <= i && dp[i - coins[j]] != Int.max {
                    dp[i] = min(dp[i], dp[i - coins[j]] + 1)    
                }
            }
        }
        
        if dp[amount] == Int.max { return -1 }
        
        return dp[amount]
    }
}
