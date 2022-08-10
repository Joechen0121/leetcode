class Solution {
    func reverseString(_ s: inout [Character]) {
        let halfIndex = s.count/2
    
        for i in 0..<halfIndex {
            let temp = s[i]
            s[i] = s[s.count - i - 1]
            s[s.count - i - 1] = temp
        }
    }
}