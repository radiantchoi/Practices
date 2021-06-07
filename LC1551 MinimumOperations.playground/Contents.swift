
class Solution {
    func minOperations(_ n: Int) -> Int {
        var arr: [Int] = []
        for m in 0..<n {
            arr.append(2*m + 1)
        }
        var count = 0
        
        for j in 0..<n/2 {
            if arr[j] != arr[n-1-j] {
                let diff = arr[n-1-j] - arr[j]
                arr[j] += diff/2
                arr[n-1-j] -= diff/2
                count += diff/2
            }
        }
        
        return count
    }
}

// 상단 계산 부분에서, 1씩 빼고 더하는걸 그대로 하면 시간초과가 난다.
// 얼마를 더해주고 빼줄지 미리 계산한 다음 적용해야 간신히 통과가 된다.
