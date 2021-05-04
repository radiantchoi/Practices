import UIKit

class Solution {
    func xorOperation(_ n: Int, _ start: Int) -> Int {
        var nums = Array(repeating: 0, count: n)
        
        for i in 0..<n {
            nums[i] = start + 2*i
        }
        
        var result = 0
        
        if n == 1 {
            result = nums[0]
        } else if n == 2 {
            result = nums[0] ^ nums[1]
        } else { // 처음에는 이 경우의 수만 계산했는데, Index out of range가 떴다.
            result = nums[0] ^ nums[1]
            for j in 2..<n {
                result = result ^ nums[j]
            }
        }
        
        return result
    }
}

// a ^ b ^ c == (a ^ b) ^ c가 된다는 사실을 알았다.
// 한편, 문제를 좀 더 차분하게 보고 생각할 필요가 있겠다는 사실을 느꼈다. 당장의 성과에 흥분해 전체 케이스를 면밀히 생각해보지 못하는 것이 여전히 단점.
