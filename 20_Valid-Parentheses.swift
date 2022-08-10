class Solution {
    
    var stack = [Character]()
    var result: Bool = false
    
    func compare(_ c: Character) -> Bool {
        guard let t = stack.popLast() else { return false}
        
        return (c == ")" && t == "(") ||
                (c == "}" && t == "{") ||
                (c == "]" && t == "[")
        
    }
    
    func isValid(_ s: String) -> Bool {
        
        for char in s {
            switch char {
                case "(", "{", "[":
                    stack.append(char)
                default:
                    result = compare(char)
                    if result == false { return false }
            }
        }
        
        return stack.isEmpty && result
    }
}