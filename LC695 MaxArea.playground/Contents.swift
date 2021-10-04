// 참고한 풀이 : https://leetcode.com/problems/max-area-of-island/discuss/622367/Swift-Clean

class Solution {
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        var result = 0
        var grid = grid
        
        for i in 0..<grid.count {
            for j in 0..<grid[0].count {
                if grid[i][j] == 1 {
                    var count = 0
                    searching(&grid, i, j, &count)
                    result = max(result, count)
                }
            }
        }
        
        return result
    }
    
    func searching(_ grid: inout [[Int]], _ i: Int, _ j: Int, _ count: inout Int) {
        if i < 0 || j < 0 || i >= grid.count || j >= grid[0].count || grid[i][j] == 0 {
            return
        }
        
        count += 1
        grid[i][j] = 0
        searching(&grid, i+1, j, &count)
        searching(&grid, i, j+1, &count)
        searching(&grid, i-1, j, &count)
        searching(&grid, i, j-1, &count)
    }
}

// 그래도 관련 문제를 풀어 봤다고, 아이디어의 60%까지는 떠올린 것 같다.
// 떠올린 아이디어: 별도의 inout 함수를 통한 재귀를 통해 이어진 곳을 찾는 것, 인덱스에 1을 빼거나 더해서 인접 셀을 찾은 것, return 조건
// 떠올리지 못한 아이디어 : max를 통해 비교해야 할 count 변수를 어디에 넣을지
// visited 2차원 배열을 따로 만들어서 해결하려고 했지만, grid를 복사한 후 체크한 셀은 0으로 만들어주는 방법도 있었다. 어차피 0 아니면 1이니까
// 코드의 흐름에 대해 차분히 생각하기, 같은 자료를 여러 형식 및 관점에서 보는 방법 기르기, inout 문법(& 붙여야 함)에 대해 생각하기 등이 과제.
