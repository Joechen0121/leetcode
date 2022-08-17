class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        
        let set = Set(nums)
        var result: Int = 0
        
        for i in 0...nums.count where !set.contains(i) {
           result = i
        }
        
        return result
    }
}