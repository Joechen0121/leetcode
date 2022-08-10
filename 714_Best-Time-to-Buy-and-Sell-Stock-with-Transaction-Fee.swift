class Solution {
    func maxProfit(_ prices: [Int], _ fee: Int) -> Int {
        // no share
        var noShare: Int = 0

        // with share
        var withShare: Int = -prices[0]

        for i in 0..<prices.count {
            noShare = max(noShare, withShare + prices[i] - fee)
            withShare = max(withShare, noShare - prices[i])
        }

        return noShare    
    }
}