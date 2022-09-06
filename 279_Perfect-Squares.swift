class Solution {
    func numSquares(_ n: Int) -> Int {
        
        // dp[j]: number of integer j 
        var dp = Array(repeating: Int.max, count: n+1)
        
        dp[0] = 0
        
        for i in 1...n {
            for j in 1...i where j*j <= i {
                if i - j * j >= 0 {
                    dp[i] = min(dp[i], dp[i - j*j] + 1)    
                }
            }
        }
        
        return dp[n]
    }
}
