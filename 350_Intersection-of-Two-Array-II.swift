class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        
        var hash = [Int: Int]()
        var result = [Int]()
        
        for num in nums1 {
            if hash[num] != nil {
                hash[num]! += 1
            }
            else {
                hash[num] = 1
            }
        }
        
        for num in nums2 {
            if hash[num] != nil && hash[num]! > 0{
                result.append(num)
                hash[num]! -= 1
            }
        }
        
        return result
    }
}
