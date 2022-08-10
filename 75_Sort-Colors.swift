class Solution {
    
    func mergeSort(_ nums: inout [Int], _ start: Int, _ end: Int) {
        if(start < end) {
            let mid = (start+end)/2
            mergeSort(&nums, start, mid)
            mergeSort(&nums, mid+1, end)
            merge(&nums, start, mid, end)
        }
    }
    
    func merge(_ nums: inout [Int], _ start: Int, _ mid: Int, _ end: Int) {
        
        var leftSub = Array(nums[start...mid])
        var rightSub = Array(nums[mid+1...end])
        var leftI: Int = 0
        var rightI: Int = 0
        var index: Int = start
        
        while(leftI < leftSub.count && rightI < rightSub.count) {
            if(leftSub[leftI] < rightSub[rightI]) {
                nums[index] = leftSub[leftI]
                leftI += 1
            }
            else {
                nums[index] = rightSub[rightI]
                rightI += 1
            }
            
            index += 1
        }
        
        while(leftI < leftSub.count) {
            nums[index] = leftSub[leftI]
            leftI += 1
            index += 1
        }
        
        while(rightI < rightSub.count) {
            nums[index] = rightSub[rightI]
            rightI += 1
            index += 1
        }
        
    }
    
    
    func sortColors(_ nums: inout [Int]) {
        
        // merge sort: time: O(logn) space: O(n)

        mergeSort(&nums, 0, nums.count-1)
        
    }
}