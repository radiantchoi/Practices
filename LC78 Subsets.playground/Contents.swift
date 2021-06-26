// 참고한 풀이 : https://leetcode.com/problems/subsets/discuss/1183561/Swift-or-4ms-or-Clean-and-Simple

class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var answer : [[Int]] = []
        answer.append([])
        
        for n in nums { // nums의 모든 원소에 대해
            for set in answer { // 이미 answer에 들어가 있는 집합들 상대로
                var x = set // 임시 변수 x에 set을 할당하고 (이미 들어가 있는 set은 바뀌면 안 된다! 그래야 이 질서가 유지가 됨)
                x.append(n) // set에 해당 숫자를 더해 준 다음
                answer.append(x) // answer에 다시 넣는다
            }
        }
        
        return answer
    }
}

// 이런 풀이는 역시 어느 정도의 수학적 인사이트가 있어야 하겠다.
// 다만, 초기값 []을 설정하지 않으면 코드가 작동하지 않고, 원본 풀이도 그렇게 돼 있어서 임의로 추가했다.
// 스위프트에서 조합을 구현할 때 이렇게 구하면 되지 않을까 생각한다.
