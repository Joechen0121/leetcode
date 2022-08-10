class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        
        var zeroIndex: Int = 0

        for i in 0..<nums.count {

            if (nums[i] != 0) {

                let temp = nums[i]
                nums[i] = nums[zeroIndex]
                nums[zeroIndex] = temp
                zeroIndex += 1
            }
        }
        
        
        /*var result: [Int] = Array(repeating: 0, count: nums.count)
        var index: Int = 0
        
        for i in 0..<nums.count {
            if (nums[i] != 0) {
                result[index] = nums[i]
                index += 1
            }
        }
        
        nums = result*/
    }
}