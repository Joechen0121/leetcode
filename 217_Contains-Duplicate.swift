class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        
        var hash: [Int: Int] = [Int: Int]()
        
        // Create hash table
        for i in 0..<nums.count {
            if (hash[nums[i]] != nil) {
                return true
            }
            else {
               hash[nums[i]] = 1 
            }
        }
        
        return false
    }
}