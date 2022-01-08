class Solution {
    func transpose(_ matrix: [[Int]]) -> [[Int]] {
        var result = Array(repeating: Array(repeating: 0, count: matrix.count), count: matrix[0].count)
        
        for i in 0..<matrix.count {
            for j in 0..<matrix[i].count {
                result[j][i] = matrix[i][j]
            }
        }
        
        return result
    }
}

// 문제를 제대로 읽고, 쉽게 생각하자.
