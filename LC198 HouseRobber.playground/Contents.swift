
class Solution {
    func rob(_ nums: [Int]) -> Int {
        var houses = nums
        
        if nums.count < 2 {
            return nums.max()!
        } else {
            for i in 2..<houses.count {
                houses[i] += houses[0..<(i-1)].max()!
            }
        }
        
        return houses.max()!
    }
}

// 뭔가.. DP같다는 느낌이 왔다.
// 길이가 2 미만일 때 예외처리를 해버리는 바람에 좀 속도가 느려진 것 같은데..
