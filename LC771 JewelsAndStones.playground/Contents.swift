import UIKit

class Solution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var result = 0
        let jewelsList = jewels.map { $0 }
        let stonesList = stones.map { $0 }
        
        for i in jewelsList {
            for j in stonesList {
                if i == j {
                    result += 1
                }
            }
        }
        
        
        return result
    }
}

// 글자 수가 1~50이었기 때문에, 각 문자열을 리스트로 뿌려 주고 하나씩 비교했다.
// 다만 시간이 꽤 많이 걸렸다고 나왔기 떄문에, 발전의 여지를 생각해 봐야 할 듯
