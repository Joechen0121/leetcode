class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        
        // Two Pointer
        if m == 0 {
            return nums1 = nums2
        }
        if n == 0 {
            return
        }

        
        var i = m - 1
        var j = n - 1
        var k = m + n - 1

        while i >= 0 && j >= 0 {

            if nums1[i] >= nums2[j] {
                nums1[k] = nums1[i]
                k -= 1
                i -= 1
            }
            else if nums1[i] < nums2[j] {
                nums1[k] = nums2[j]
                k -= 1
                j -= 1
            }
        }
        
        while j >= 0 {
            nums1[k] = nums2[j]
            k -= 1
            j -= 1
        }
        
        // Brute Force
        /*var result = [Int]()
        var i = 0
        var j = 0

        while i < m || j < n {

            if i == m {
                result.append(nums2[j])
                j += 1
                continue
            }
            else if j == n {
                result.append(nums1[i])
                i += 1
                continue
            }

            if nums1[i] > nums2[j] {
                result.append(nums2[j])
                j += 1
            }
            else if nums1[i] < nums2[j] {
                result.append(nums1[i])
                i += 1
            }
            else {
                result.append(nums1[i])
                result.append(nums2[j])
                i += 1
                j += 1
            }
        }
        
        nums1 = result*/
    }
}
