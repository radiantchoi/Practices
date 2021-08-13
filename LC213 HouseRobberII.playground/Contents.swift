
class Solution {
    func rob(_ nums: [Int]) -> Int {
        if nums.count <= 3 {
            return nums.max()!
        } else {
            var houses1 = nums
            var houses2 = nums
            houses1.removeLast()
            houses2.removeFirst()
            
            for i in 2..<houses1.count {
                houses1[i] += houses1[0..<(i-1)].max()!
            }
            
            for j in 2..<houses2.count {
                houses2[j] += houses2[0..<(j-1)].max()!
            }
            
            return max(houses1.max()!, houses2.max()!)
        }
    }
}

// 무심코 힌트를 봐버렸는데, 원형으로 이루어진 집들은 두 가지 케이스로 나눠서 한다는 점이 상당히 감명깊었다.
// 다만 허둥대면서 푸느라 제출에서 네 번이나 에러가 났던 부분은 반성해야..
// 차분히 생각하고 문제를 풀도록 하자.
