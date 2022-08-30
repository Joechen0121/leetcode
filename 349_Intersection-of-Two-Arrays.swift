class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        
        // Method : set
        var set = Set<Int>()
        var result = [Int]()
        
        for num in nums1 {
            set.insert(num)
        }
        
        for num in nums2 {
            if set.contains(num) {
                result.append(num)
                set.remove(num)
            }
        }
        return result
        
        // Method : hash
        /*var hash = [Int: Bool]()
        var result = [Int]()
        
        // Stored nums1 to hash
        for num in nums1 {
            if hash[num] == nil {
                hash[num] = true
            }
        }
        
        // Compare nums2 value with nums1
        for num in nums2 {
            if hash[num] != nil && !result.contains(num) {
                result.append(num)
            }
        }
        
        return result*/
    }
}
