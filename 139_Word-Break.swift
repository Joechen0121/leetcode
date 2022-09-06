class Solution {
    func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
        
        guard s.count != 0 else { return true }
        
        let arr = Array(s)
        let set = Set<String>(wordDict)
        
        // dp[j]: can be substring or not 
        var dp = Array(repeating: false, count: arr.count+1)
        
        dp[0] = true 
        
        for i in 1...arr.count {
            for j in 0..<i {
                let subString = String(arr[j..<i])
				if dp[j] && set.contains(subString) {
                    dp[i] = true 
                }
            }
        }
        
        return dp[arr.count]
    }
}
