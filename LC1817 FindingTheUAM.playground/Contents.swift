// 참고한 풀이 : https://leetcode.com/problems/finding-the-users-active-minutes/discuss/1141393/Swift-Swift-O(n)-solution

class Solution {
    func findingUsersActiveMinutes(_ logs: [[Int]], _ k: Int) -> [Int] {
        var answer = Array(repeating: 0, count: k)
        var dict: [Int: Set<Int>] = [:]
        
        for log in logs {
            dict[log[0], default: []].insert(log[1])
        }
        
        for item in dict {
            let uam = item.value.count
            if uam <= k {
                answer[uam-1] += 1
            }
        }
        
        return answer
    }
}

// dict와 set 등 여러 자료구조에 능숙해야 풀 수 있는 문제였다.
// 특히 dictionary 사용에 약한데, 앞으로 보강해야 해시 관련된 문제를 위시한 더 많은 문제를 풀 수 있을 것.
