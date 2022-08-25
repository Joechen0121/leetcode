class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        
        // Method 1: O(nlog n)
        var hash = [Int: Int]()
        var result = [Int]()
        
        // stored in hash table
        for i in 0..<nums.count {
            if hash[nums[i]] == nil {
                hash[nums[i]] = 1
            }
            else {
                hash[nums[i]]! += 1
            }
        }
        
        // sort hash value - big -> small so get key
        let temp = hash.sorted{ $0.1 > $1.1}.map{ $0.0}
        
        // append to result
        for i in 0..<k {
            result.append(temp[i])
        }
        
        return result
    }
}
