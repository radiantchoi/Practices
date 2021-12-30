class Solution {
    func isPathCrossing(_ path: String) -> Bool {
        var result = false
        var point = [0, 0]
        var log = [[Int]]()
        log.append(point)
        var directions = path.map { String($0) }
        
        for d in directions {
            if d == "N" {
                point[1] += 1
            } else if d == "S" {
                point[1] -= 1
            } else if d == "E" {
                point[0] += 1
            } else {
                point[0] -= 1
            }
            
            if log.contains(point) {
                result = true
                break
            } else {
                log.append(point)
            }
        }
        
        return result
    }
}

// 굉장히 주먹구구식으로 푼 것 같지만, 다 풀고 나서 문제에서 주어진 힌트를 보니 이렇게 푸는 게 의도된 사항인 것 같다..
