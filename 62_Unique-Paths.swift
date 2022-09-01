class Solution {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        
        var dp = Array(repeating: Array(repeating: 0, count: n), count: m)
        
        for row in 0..<m {
            dp[row][0] = 1
        }
        
        for col in 0..<n {
            dp[0][col] = 1
        }
        
        for row in 1..<m {
            for col in 1..<n {
                dp[row][col] = dp[row-1][col] + dp[row][col-1]
            }
        }
        
        return dp[m-1][n-1]
    }
}
