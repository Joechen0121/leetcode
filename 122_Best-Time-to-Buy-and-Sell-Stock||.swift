class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        
        var noShare: Int = 0
        var withShare: Int = -prices[0]

        for i in 0..<prices.count {
            
            let temp = noShare
            // no share and sell today
            noShare = max(noShare, withShare + prices[i])
            // with share and buy today
            withShare = max(withShare, temp - prices[i])
        }

        return noShare    
    }
}