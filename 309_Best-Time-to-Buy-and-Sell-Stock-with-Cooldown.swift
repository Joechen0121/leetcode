class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        
        var noShare: Int = 0
        var coolDown: Int = 0
        var withShare: Int = -prices[0]

        for i in 0..<prices.count {
            
            let preNoShare = noShare
            let preCoolDown = coolDown
            let preWithShare = withShare
            
            // no share and sell today
            noShare = max(preNoShare, preWithShare + prices[i])
            // no share and cool down
            coolDown = max(preCoolDown, preNoShare)
            // with share and buy today
            withShare = max(preWithShare, preCoolDown - prices[i])
        }

        return noShare     
    }
}