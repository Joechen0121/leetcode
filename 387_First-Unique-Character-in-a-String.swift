class Solution {
    func firstUniqChar(_ s: String) -> Int {
        let c = Array(s)
        var hash: [Character: Int] = [Character: Int]()

        for i in 0..<c.count {
            if (hash[c[i]] == nil) {
                hash[c[i]] = 0
            }
            else {
                hash[c[i]] = hash[c[i]]! + 1
            }
        }

        for i in 0..<c.count {
            if(hash[c[i]] == 0) {
                return i
            }
        }

        return -1        
    }
}