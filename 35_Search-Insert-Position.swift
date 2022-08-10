class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var mid: Int = 0
        var left: Int = 0
        var right: Int = nums.count-1
        
        while(left <= right) {
            
            mid = (left + right)/2
            
            if(target > nums[mid]) {
                left = mid + 1
            }
            else if(target < nums[mid]) {
                right = mid - 1
            }
            else {
                return mid
            }
        }
        
        return left
    }
}