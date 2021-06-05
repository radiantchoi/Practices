
class Solution {
    func countPoints(_ points: [[Int]], _ queries: [[Int]]) -> [Int] {
        
        var result = Array(repeating: 0, count: queries.count)
        
        for j in 0..<queries.count {
            for point in points {
                let xDist = abs(queries[j][0] - point[0])
                let yDist = abs(queries[j][1] - point[1])
                let radius = queries[j][2]
                if xDist*xDist + yDist*yDist <= radius*radius {
                    result[j] += 1
                }
            }
        }
        
        return result
        
    }
}

// 원은 한 점으로부터 일정한 거리를 가진 점들의 집합이다. 그래서, 주어진 점과 중심 사이의 거리가 반지름 미만이면 해당 원 안에 해당 점이 있는 것이다. (힌트 1)
// 피타고라스의 정리를 이용했다.
// 정답 리스트에서 0을 지우는 실수가 있었는데, 모든 점을 포함하지 않은 원도 있을 수 있으므로 그래서는 안 됐다.
// 반면, queries에서의 j를 숫자로 씀으로써, result 배열에 답을 더하기가 좀 더 쉬워졌다. 이 아이디어를 떠올린 것은 잘 한 일
