// 참조: https://leetcode.com/problems/island-perimeter/discuss/132944/Swift

class Solution {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        var perimeter = 0
        
        for (row, rows) in grid.enumerated() {
            for (cell, cellValue) in rows.enumerated() where cellValue == 1 { // 혼동을 막기 위해 cell이라고 했겠다만, 사실 col이라고 했어도 됐을 뻔 했다.
                
                // 이렇게 셀의 좌표가 정해졌으니까, 셀의 상하좌우 셀을 체크함으로써 둘레 길이를 더해 주는 방식으로 갔다.
                if row == 0 {
                    perimeter += 1
                } else if grid[row-1][cell] == 0 {
                    perimeter += 1
                }
                
                if row == grid.count-1 {
                    perimeter += 1
                } else if grid[row+1][cell] == 0 {
                    perimeter += 1
                }
                
                if cell == 0 {
                    perimeter += 1
                } else if grid[row][cell-1] == 0 {
                    perimeter += 1
                }
                
                if cell == rows.count-1 {
                    perimeter += 1
                } else if grid[row][cell+1] == 0 {
                    perimeter += 1
                }
            }
        }
        
        return perimeter
    }
}

// bfs나 dfs를 이용한 세련된 풀이를 기대했다만.. 조회수 탑 2 풀이법을 보니 다 이렇게 해 놨었다.
// 아이디어의 씨앗은 나도 생각했던 방법이기 때문에, 인내심을 갖고 문제를 깊이 들여다 보는게 중요할 것 같다.
// enumerated()는 문제를 풀 때 아주 유용할 것 같다.
// 어쩌면 탐색에 대해 너무 어렵게 생각하고 있는 걸지도..?
