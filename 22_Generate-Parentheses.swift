class Solution {
    func backtracking(_ output: inout [String], _ s: String, _ left: Int, _ right: Int, _ max: Int) {
        
        //base case
        if left == max && right == max {
            output.append(s)
            return
        }
        
        // Conditions
        if left < max {
            backtracking(&output, s+"(", left+1, right, max)
        }
        
        if right < left {
            backtracking(&output, s+")", left, right+1, max)
        }
    }
    
    func generateParenthesis(_ n: Int) -> [String] {
        
        var result: [String] = [String]()
        backtracking(&result, "", 0, 0, n)
        return result
    }
}