class Solution {
    
    var result = [String]()
    var path: String = ""
    
    let map: [String: String] = [
        "2": "abc",
        "3": "def",
        "4": "ghi",
        "5": "jkl",
        "6": "mno",
        "7": "pqrs",
        "8": "tuv",
        "9": "wxyz",
    ]
    
    func backtracking(_ digits: [Character], _ digitsIndex: Int) {
        
        if path.count == digits.count {
            result.append(path)
            return
        }
        
        if digitsIndex > digits.count {
            return
        }
        
        let letters = map[String(digits[digitsIndex])]!
        for letter in letters {
            path.append(letter)
            backtracking(digits, digitsIndex+1)
            path.removeLast()
        }
    }
    
    func letterCombinations(_ digits: String) -> [String] {
        
        if digits.isEmpty {
            return []
        }
        
        if digits.count == 1 {
            map[digits]!.forEach {
                result.append(String($0))
            }
            return result
        }
        
        backtracking(Array(digits), 0)
        
        return result
    }
}
