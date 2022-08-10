class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        
        var min: Int = Int.max
        var profit: Int = 0

        for i in 0..<prices.count {
            if (prices[i] < min) {
                min = prices[i]
            }

            // earn
            let calProfit = prices[i] - min
            if (calProfit > profit) {
                profit = calProfit
            }
        }
        return profit 
    }
}