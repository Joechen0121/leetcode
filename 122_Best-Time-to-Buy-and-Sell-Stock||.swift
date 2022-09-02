class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        
        // Greedy
        var noStock = 0
        var withStock = -prices[0]
        
        for i in 0..<prices.count {
            let previousNoStock = noStock
            let previousWithStock = withStock
            noStock = max(previousNoStock, previousWithStock + prices[i])
            withStock = max(previousWithStock, previousNoStock - prices[i])
        }
        
        return noStock
    }
}
