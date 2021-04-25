import UIKit

class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        var result = 0
        var wealths: [Int] = Array(repeating: 0, count: accounts.count)
        for n in 0..<accounts.count {
            for i in accounts[n] {
                wealths[n] += i
            }
        }
        
        result = wealths.max()!
        
        return result
    }
}

// 2차원 배열이 주어졌을 때 그것을 다루는 문제
