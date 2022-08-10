class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {

        if (nums.count == 1) {
            return (nums[0] == target) ? [0, 0]: [-1, -1]
        }
        
        var left: Int = 0
        var right: Int = nums.count - 1
        var result: [Int] = [Int]()
        
        while(left <= right) {
            
            let mid = (left + right)/2
            
            if(nums[mid] < target) {
                left = mid + 1
            }
            else if(nums[mid] > target) {
                right = mid - 1
            }
            else if (nums[mid] == target) {
                
                var l = mid
                var r = mid
                
                // find left index
                while (l >= 0) && (nums[l] == target) {
                    l = l - 1
                }
                
                // find right index
                while (r <= nums.count - 1) && (nums[r] == target) {
                    r = r + 1
                }
                
                result.append(l+1)
                result.append(r-1)
                
                return result
            }
        }
        
        return [-1, -1]
    }
}