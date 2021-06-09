// 참고한 풀이 : https://leetcode.com/problems/count-number-of-teams/discuss/726312/Swift-N3-and-N2-solutions

class Solution {
    func numTeams(_ rating: [Int]) -> Int {
        var count = 0
        
        for j in 0..<rating.count {
            var smallerI = 0
            var largerI = 0
            var smallerK = 0
            var largerK = 0
            
            for i in 0..<j {
                if rating[j] > rating[i] {
                    smallerI += 1
                } else if rating[j] < rating[i] {
                    largerI += 1
                }
            }
            
            for k in j..<rating.count {
                if rating[j] < rating[k] {
                    largerK += 1
                } else if rating[j] > rating[k] {
                    smallerK += 1
                }
            }
            
            count += (smallerI * largerK) + (largerI * smallerK)
        }
            
        return count
    }
}

// 문제에서 주어진 i, j, k에서 j를 중심으로 두고, i는 j보다 작은 범위, k는 j보다 큰 범위 내에서 고정하고 문제를 풀면 된다.
// count에 1씩 더하는 건 역시 시간 복잡도가 너무 높았고, 가짓수를 미리 구한 다음에 count에 더하는 방법을 썼어야 했다.
