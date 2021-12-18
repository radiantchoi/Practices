// 참고 : https://leetcode.com/problems/permutations/discuss/229627/Swift

class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        var answer = [[Int]]()
        var nums = nums
        
        recurse(0, &nums, &answer) // 재귀 함수를 돌린다
        return answer
    }
    
    func recurse(_ n: Int, _ nums: inout [Int], _ result: inout [[Int]]) {
        if n == nums.count {
            result.append(nums) // n이 생명을 다했음을 말한다 - 이 함수는 본질적으로 자리를 바꾸는 함수기 때문
            return
        }
        
        for i in n..<nums.count {
            nums.swapAt(n, i) // n과 i의 자리를 바꾼다
            self.recurse(n+1, &nums, &result) // 그 자리를 바꾼 버전으로 다시 재귀를 돌린다
            nums.swapAt(n, i) // 자리를 원상복구시켜 준다 - 이따 또 써야 되니까
        }
    }
}

// 하나하나 과정을 탐구해 보자. 그러면 잘 이해될듯
