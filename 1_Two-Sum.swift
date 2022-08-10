class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map: [Int: Int] = [Int: Int]()

        for i in 0..<nums.count {

            let diff = target - nums[i]

            if let value = map[diff] {
                return [value, i]
            }
            else {
                map[nums[i]] = i
            }
        }
        return []
    }
}