// 참고한 풀이 : https://leetcode.com/problems/jump-game/discuss/140890/Swift-solution

class Solution {
    func canJump(_ nums: [Int]) -> Bool {
        
        var stretch = nums[0] // 지금 최대한으로 갈 수 있는 길이
        
        for i in 1..<nums.count {
            if i > stretch { // 최대한으로 갈 수 있는 곳보다 더 먼 곳에 있다면
                return false // 더 이상 앞으로 갈 수가 없다
            }
            
            stretch = max(stretch, i + nums[i]) // 기존의 최대한이냐, 새로운 최대한이냐?
        }
        
        return true
    }
}

// 참고한 풀이에서는 enumerated도 사용했다. 알아두자.
