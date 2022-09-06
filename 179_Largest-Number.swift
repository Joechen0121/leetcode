class Solution {
    func largestNumber(_ nums: [Int]) -> String {
        
        var result = ""
        
        guard nums.count != 0 else { return result }
        
        let numsSorted = nums.sorted { (nums1, nums2) in
            let str1 = String(nums1) + String(nums2)
            let str2 = String(nums2) + String(nums1)
                                      
            return Int(str1)! > Int(str2)!
        }
        
        if numsSorted[0] == 0 {
            return "0"
        }
        
        for num in numsSorted {
            result += String(num)
        }
        
        return result
    }
}
