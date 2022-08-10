class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var input = nums
        var result: [[Int]] = [[Int]]()

        // sort
        input.sort()

        // find j + k = -i
        for i in 0..<input.count {

            if (i > 0) && (input[i] == input[i-1]) {
                continue
            }
            var left: Int = i + 1
            var right: Int = nums.count - 1

            while (left < right) {

                let sum = input[i] + input[left] + input[right]
                if sum < 0  {
                    left = left + 1
                }
                else if sum > 0 {
                    right = right - 1
                }
                else {
                    result.append([input[i], input[left], input[right]])
                    left = left + 1
                    while (left < right) && (input[left] == input[left - 1]) {
                        left = left + 1
                    }
                }
            }
        }

        return result        
    }
}