class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        
        var s1 = Array(s)
        var s2 = Array(t)
        
        guard s1.count == s2.count else { return false }
        
        var hash1: [Character: Int] = [Character: Int]()
        var hash2: [Character: Int] = [Character: Int]()
        
        for i in 0..<s1.count {
            if hash1[s1[i]] != nil {
                hash1[s1[i]] = hash1[s1[i]]! + 1
            }
            else {
                hash1[s1[i]] = 0
            }
        }
        
        for i in 0..<s2.count {
            if hash2[s2[i]] != nil {
                hash2[s2[i]] = hash2[s2[i]]! + 1
            }
            else {
                hash2[s2[i]] = 0
            }
        }
        
        return hash1 == hash2
    }
}
