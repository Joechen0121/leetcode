class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        
        if strs.isEmpty { return "" }
        
        var prefix = strs[0]
        
        for str in strs {
            while !str.hasPrefix(prefix) {
                prefix = String(prefix.dropLast())
            }
        }
        
        return prefix
    }
}
