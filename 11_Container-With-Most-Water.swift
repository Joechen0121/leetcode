class Solution {
    func maxArea(_ height: [Int]) -> Int {
        
        // Two pointer + Greedy
        
        var fastIndex = height.count - 1
        var slowIndex = 0
        var mostWater = 0
        
        while slowIndex < fastIndex {
            
            let currentWater = min(height[slowIndex], height[fastIndex]) * (fastIndex - slowIndex)
            mostWater = max(mostWater, currentWater)
            
            if height[fastIndex] > height[slowIndex] {
                slowIndex += 1
            }
            else {
                fastIndex -= 1
            }
        }
        
        return mostWater
    }
}
