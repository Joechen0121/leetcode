class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        
        var start: Int = 0

        for i in 0..<nums.count {
            if (nums[i] != 0) {
                nums[start] = nums[i]
                start += 1
            }
        }
        
        for i in start..<nums.count {
            nums[i] = 0
        }
    }
}
