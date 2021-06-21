
class Solution {
    func maxWidthOfVerticalArea(_ points: [[Int]]) -> Int {
        var xAxis: [Int] = []
        for i in 0..<points.count {
            xAxis.append(points[i][0])
        }
        
        xAxis.sort()
        var diff = 0
        for j in 1..<xAxis.count {
            if xAxis[j] - xAxis[j-1] > diff {
                diff = xAxis[j] - xAxis[j-1]
            }
        }
        
        return diff
    }
}

// x좌표의 차이만 가지고 해결할 수 있었던 문제..
