class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var result: Int = 0
       
        for num in nums {
            result = result ^ num
        }
        
        return result
    }
}