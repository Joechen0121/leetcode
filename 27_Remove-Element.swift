class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        
        var start: Int = 0
        
        for i in 0..<nums.count {
            if nums[i] != val {
                nums[start] = nums[i]
                start += 1
            } 
        }
        
        return start
    }
}
