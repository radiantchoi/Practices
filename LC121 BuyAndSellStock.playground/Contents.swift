class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var index = 0
        var min = prices[0]
        var profit = 0
        
        while index < prices.count {
            if prices[index] <= min {
                min = prices[index]
            } else {
                profit = max(profit, prices[index] - min)
            }
            index += 1
        }
        
        return profit
    }
}

// profit 초기값이 0이니까, while 안에서 min이 바뀔 때 profit을 건드릴 필요가 없다.
