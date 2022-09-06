class Solution {
    func findPeakElement(_ nums: [Int]) -> Int {
        
        guard nums.count != 1 else { return 0 }
        
        var left = 0
        var right = nums.count - 1
        
        while left < right {
            let mid = (left + right)/2
            
            if nums[mid] > nums[mid+1] {
                right = mid
            }
            else if nums[mid] < nums[mid+1] {
                left = mid + 1
            }
        }
        
        return left
    }
}
