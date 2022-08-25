class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        
        var result = [[String]]()
        var hash = [String: [String]]()
        
        // Check each string
        for i in 0..<strs.count {
            // Sort str
            let strSorted = String(strs[i].sorted())
            
            // Store in hash : [String: [String]]   
            if hash[strSorted] == nil {
                hash[strSorted] = [strs[i]]
            }
            else {
                hash[strSorted]!.append(strs[i])
            }
        }
        
        // Store in result
        for value in hash.values {
            result.append(value)
        }
        
        return result
    }
}
