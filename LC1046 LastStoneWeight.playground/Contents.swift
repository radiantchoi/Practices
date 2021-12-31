class Solution {
    func lastStoneWeight(_ stones: [Int]) -> Int {
        var pile = stones
        
        while pile.count > 1 {
            pile.sort()
            let y = pile.removeLast()
            let x = pile.removeLast()
            if y - x > 0 {
                pile.append(y-x)
            }
        }
        
        if !pile.isEmpty {
            return pile[0]
        } else {
            return 0
        }
    }
}

// 문제를 잘 읽자.
