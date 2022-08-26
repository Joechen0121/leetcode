class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        
        guard nums.count > 1 else { return nums.count }
        
        var start: Int = 2
    
        for i in 2..<nums.count {
            if nums[i] != nums[start-2] {
                nums[start] = nums[i]
                start += 1
            }
        }

        return start   
    }
}
