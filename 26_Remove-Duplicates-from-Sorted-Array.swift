class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        
        var start: Int = 1
    
        for i in 0..<nums.count {
            if nums[i] != nums[start-1] {
                nums[start] = nums[i]
                start += 1
            }
        }

        return start
    }
}
