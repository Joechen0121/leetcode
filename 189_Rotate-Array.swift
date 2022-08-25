class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        
        // Method 1
        /*for _ in 0..<k { 
            nums.insert(nums.removeLast(), at: 0)
        }*/
        
        // Method 2
        let temp = nums
        for i in 0..<nums.count {
            nums[(i + k) % nums.count] = temp[i]
        }
    }
}
