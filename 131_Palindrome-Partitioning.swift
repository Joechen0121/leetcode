class Solution {
    
    var result = [[String]]()
    var path = [String]()
    
    func isPalindrome(_ s: [Character], _ start: Int, _ end: Int) -> Bool {
        var start = start
        var end = end 
        
        while start < end {
            if s[start] != s[end] {
                return false
            }
            
            start += 1
            end -= 1
        }
        
        return true
    }
    
    func backtracking(_ s: [Character], _ startIndex: Int) {
        
        // stop condition
        if startIndex >= s.count {
            result.append(path)
            return
        }
        
        // iterate the string and divide
        for i in startIndex..<s.count {
            // if Palindrome ?
            if isPalindrome(s, startIndex, i) {
                path.append(String(s[startIndex...i]))
                backtracking(s, i+1)
                path.removeLast()
            }
        }
    }
    
    func partition(_ s: String) -> [[String]] {
        
        backtracking(Array(s), 0)
        
        return result
    }
}
