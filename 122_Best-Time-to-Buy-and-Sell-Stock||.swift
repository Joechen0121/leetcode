class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        
        
        // Greedy
        var noStock = 0
        var withStock = -prices[0]
        
        for i in 0..<prices.count {
            noStock = max(noStock, withStock + prices[i])
            withStock = max(withStock, noStock - prices[i])
        }
        
        return noStock
    }
}
