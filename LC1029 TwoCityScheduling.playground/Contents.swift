
class Solution {
    func twoCitySchedCost(_ costs: [[Int]]) -> Int {
        var answer = 0
        var costA: [(Int, Int, Int)] = []
        var costB: [(Int, Int, Int)] = []

        for i in 0..<costs.count {
            if costs[i][0] < costs[i][1] {
                costA.append((i, costs[i][1] - costs[i][0], costs[i][0]))
            } else {
                costB.append((i, costs[i][0] - costs[i][1], costs[i][1]))
            }
        }

        while costA.count != costB.count {
            if costA.count > costB.count {
                let diff = costA.map { $0.1 }
                var idx = Int()
                for j in 0..<diff.count {
                    if diff[j] == diff.min() {
                        idx = j
                        break
                    }
                }
                costB.append((costA[idx].0, costA[idx].1, costs[costA[idx].0][1]))
                costA.remove(at: idx)
                
            } else if costB.count > costA.count {
                let diff = costB.map { $0.1 }
                var idx = Int()
                for j in 0..<diff.count {
                    if diff[j] == diff.min() {
                        idx = j
                        break
                    }
                }
                costA.append((costB[idx].0, costB[idx].1, costs[costB[idx].0][0]))
                costB.remove(at: idx)
            }
        }
        
        for i in 0..<costA.count {
            answer += costA[i].2
            answer += costB[i].2
        }
        
        return answer
    }
}

// 알아두어야 할 것 : 튜플에 있는 원소에 접근하는 방법
// 덤으로, swift에는 sum 함수가 따로 있지 않고 reduce를 사용해야 한다. 이것의 사용법도 알아두자.
