class Solution {
    func isPalindrome(_ s: String) -> Bool {
        
        let a = Array(s)
        var indexLeft = 0
        var indexRight = a.count - 1
        
        while indexLeft < indexRight {
            
            // Check number and letter
            // left
            if !a[indexLeft].isLetter && !a[indexLeft].isNumber {
                indexLeft += 1
            }
            // right
            else if !a[indexRight].isLetter && !a[indexRight].isNumber {
                indexRight -= 1
            }
            else if String(a[indexLeft]).lowercased() != String(a[indexRight]).lowercased() {
                return false
            }
            else {
                indexLeft += 1
                indexRight -= 1
            }
        }
        
        return true
    }
}
