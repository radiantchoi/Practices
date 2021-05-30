import UIKit

// https://leetcode.com/problems/minimum-time-visiting-all-points/discuss/738995/Easy-Swift-Solution 풀이 참고

class Solution {
    func minTimeToVisitAllPoints(_ points: [[Int]]) -> Int {
        var current = points[0]
        var estimated = 0
        var visited = 1
        
        if points.count == 1 {
            return 0
        }
        
        while visited < points.count {
            let nextPoint = points[visited]
            estimated += max(abs(current[0] - nextPoint[0]), abs(current[1] - nextPoint[1]))
            current = nextPoint
            visited += 1
        }
        
        return estimated
    }
}

// 시뮬레이션 타입 문제로 오독하고, 두 가지 아이디어를 떠올리지 못했다.
// 1번, 두 좌표 간의 거리는 두 좌표 간의 x좌표 y좌표의 차이로 나타내면 되고, 굳이 1씩 더해줄 필요가 없다는 점.
// 2번, 대각선으로 움직이는 것 또한 비용이 1이므로, 사실상 x좌표의 차이와 y좌표의 차이 중 큰 것 만큼의 시간이 걸린다는 점.
// 코드를 다시 짜는 습관은 좋으나, 처음부터 다시 생각하는 습관도 들여야 할 것 같다.
