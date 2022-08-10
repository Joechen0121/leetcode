class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
         // create hash table
        var hash: [Int: Int] = [Int: Int]()

        // calculate counter for each index
        for i in 0..<nums.count {

            if (hash[nums[i]] != nil) {
                hash[nums[i]]! += 1
                // compare n/2
                if(hash[nums[i]]!) > (nums.count/2) {
                    return nums[i]
                }
            }
            else {
                hash[nums[i]] = 1
            }
        }

        return nums[0]   
    }
}