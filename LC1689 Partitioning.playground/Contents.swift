import UIKit

class Solution {
    func minPartitions(_ n: String) -> Int {
        let numbers = n.map { String($0) }
        var numbersArray: [Int] = []
        
        for i in numbers {
            numbersArray.append(Int(i)!)
        }
        
        return numbersArray.max()!
    }
}

// String을 Int로 바꿀 때는 강제 언래핑을 해줘야 함을 꼭 기억하자.
// 아이디어 자체는 쉬웠던 편으로, 1이나 0이 된다는 것은, 자릿수 중 가장 큰 숫자와 같은 값이 나온다는 것이다.
// 요컨대 1~9 안에 답이 있단 말.
