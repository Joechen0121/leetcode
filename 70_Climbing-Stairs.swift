class Solution {
    var dp: [Int: Int] = [Int: Int]()
    
    func climbStairs(_ n: Int) -> Int {
    
        var result: Int = 0
        
        if (dp[n] != nil) {
            return dp[n]!
        }
        
        if (n < 4) {
            return n
        }
        else {
            dp[n] = climbStairs(n - 2) + climbStairs(n - 1)
            return dp[n]!
        }
    }
}