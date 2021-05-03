import UIKit

class Solution {
    func balancedStringSplit(_ s: String) -> Int {
        var stringArray = s.map { String($0) }
        var count = 0
        var indicate = 0
        
        for n in 0..<stringArray.count {
            if stringArray[n] == "L" {
                indicate += 1
            } else if stringArray[n] == "R" {
                indicate -= 1
            }
            if indicate == 0 {
                count += 1
            }
        }
        
        return count
    }
}

// 힌트 1을 보고 힌트 2에 해당하는 내용까지 떠올렸으나, indicate를 반복문 안에 넣어놓는 실수를 저질렀다. 어쩐지 값이 계속 안찍히더라니
// 스위프트의 문자열 인덱싱에 대해 생각해볼 필요가 있겠다. 매번 이렇게 배열에 뿌려주고 문제를 풀어야 하나??
