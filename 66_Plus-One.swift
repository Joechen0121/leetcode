class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var result: [Int] = digits
        
        // 9 -> 0
        for i in stride(from: result.count-1, to: -1, by: -1) {
            if result[i] != 9 {
                result[i] += 1
                return result
            }
            else {
                result[i] = 0
            }
        }

        // 99999 -> 100000
        var result1: [Int] = Array(repeating: 0, count: result.count+1)

        result1[0] = 1
        return result1   
    }
}