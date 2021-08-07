// 참고한 풀이 : https://leetcode.com/problems/longest-increasing-subsequence/discuss/515173/Swift-DP-solution

class Solution {
    func lengthOfLIS(_ nums: [Int]) -> Int {
        var holder = Array(repeating: 1, count: nums.count)
        // 각 원소로부터 시작하는 Subsequence의 최소 길이를 담은 배열
        
        for i in 0..<holder.count {
            for j in 0..<i { // 선택된 인덱스 i보다 앞에 있는 j에 대해
                if nums[j] < nums[i] && holder[i] < holder[j] + 1 {
                    // j에 있는 게 i보다 작고, 만약 그렇다면 holder에 들어 있는 Subsequence의 길이는 최소 1개가 더해져야 하는데, 이것보다 작다면?
                    holder[i] = holder[j] + 1 // 그 숫자로 바꿔 준다.
                }
            }
        }
        
        return holder.max()! // 가장 긴 부분집합의 길이 출력
    }
}

// 위로 올라가면서 생각할 게 아니라, 아래로 내려가면서 생각했더라면 훨씬 쉽게 풀었을 문제.
// 요즘 문제 풀 때마다 자료구조에 막히는데, 그래프나 DP 등 자료구조와 고급 알고리즘을 공부해야겠다.
// 더불어 문제를 풀 때 뭘 버리고 뭘 중심으로 생각해야 할지, 컴퓨터적인 사고방식을 다시금 확립할 필요가 있다.
