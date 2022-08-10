class Solution {
    func findDuplicate(_ nums: [Int]) -> Int {
        
        var hash: [Int: Int] = [Int: Int]()
        
        for i in 0..<nums.count {
            if(hash[nums[i]] != nil) {
                return nums[i]
            }
            else {
                hash[nums[i]] = 0
            }
        }
        
        return -1
    }
}