// 참고한 풀이 : https://leetcode.com/problems/01-matrix/discuss/1479363/Swift-BFS

class Solution {
    func updateMatrix(_ mat: [[Int]]) -> [[Int]] {
        var queue = [(row: Int, col: Int)]() // bfs 수행을 위한 큐
        var dist = Array(repeating: Array(repeating: Int.max, count: mat[0].count), count: mat.count) // 0까지의 거리를 저장할 배열
        var directions = [[1, 0], [-1, 0], [0, 1], [0, -1]] // 4방향을 나타내는 배열
        
        for row in 0..<mat.count {
            for col in 0..<mat[0].count {
                if mat[row][col] == 0 {
                    dist[row][col] = 0 // 0이 있는 좌표는 0까지의 거리가 0이므로..
                    queue.append((row, col)) // 여기서부터 찾아보자! 해당 좌표를 큐에 넣어 준다.
                }
            }
        }
        
        while !queue.isEmpty { // 0에서 시작한 친구들이 다 떠날 때까지
            let (row, col) = queue.removeFirst() // 큐니까
            for direction in directions { // 네 방향에 대해 전부 계산해 준다
                let nextRow = row + direction[0]
                let nextCol = col + direction[1]
                
                if nextRow < 0 || nextCol < 0 || nextRow >= mat.count || nextCol >= mat[0].count || mat[nextRow][nextCol] == 0 {
                    continue // 당연히, 인덱스의 범위를 넘어서는 좌표는 계산 대상에서 제외한다. + 혹시 주변에 0인 좌표가 있다면 그것도 제외
                }
                
                if dist[nextRow][nextCol] > dist[row][col] + 1 { // 바로 옆에 붙어있는 친구는 당연히 거리가 1 차이가 나야 된다. 그것보다 크다면
                    dist[nextRow][nextCol] = dist[row][col] + 1 // 보정을 해 준다.
                    queue.append((nextRow, nextCol))
                    // 그리고 그 옆에 있는 녀석도 큐에 집어넣는다: 이렇게 하지 않을 시 거리가 1인 좌표만 정상적으로 숫자가 나온다.
                }
            }
        }
        
        return dist
    }
}

// 최단 거리 문제는 bfs를 활용해야 한다는 것을 떠올렸다.
// 단, 앞에서 풀었던 문제 때문에 별도의 함수로 꼭 빼야 한다고 생각했다.
// 이런 데에서는 오히려 거리를 나타내는 배열을 따로 만들고, 거기에 거리를 저장하는 것이 좋았다. 일종의 dp
// bfs를 할 때는 큐를 사용한다. 각 탐색 알고리즘의 원리를 그림으로 그려보고 문제를 풀도록 하자.
// 요컨대, 기본에 충실하고, 유연하게 생각하자.
