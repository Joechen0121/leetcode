class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        
        // answer = Left * Right
        var result = Array(repeating: 1, count: nums.count)
        
        // Left
        for i in 1..<nums.count {
            result[i] *= result[i-1] * nums[i-1]
        }
        
        var right = 1
        // Right
        for i in (0..<nums.count).reversed() {
            result[i] *= right
            right *= nums[i]
        }
        
        return result
        // Time limited 
        /*var sum = 1
        var nums = nums
        var result = [Int]()

        for i in 0..<nums.count {
            nums.swapAt(0, i)

            for j in 1..<nums.count {
                sum *= nums[j]
            }
            result.append(sum)
            sum = 1
        }

        return result*/
    }
}
