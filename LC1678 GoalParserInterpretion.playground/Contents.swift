import UIKit

class Solution {
    func interpret(_ command: String) -> String {
        var resultArray = command.map { String($0) }
        for n in 0..<resultArray.count {
            if resultArray[n] == "(" {
                if resultArray[n+1] == ")" {
                    resultArray[n] = "o"
                } else {
                    resultArray[n] = "no"
                }
            }
        }
        
        resultArray.removeAll { $0 == "no" }
        resultArray.removeAll { $0 == ")" }
        
        return resultArray.joined()
    }
}

// 배열을 다룸에 있어, 반복문 안에서 원소를 지우는 일이 없도록 주의하자.
// 별개로, 클래스 다루는 법에 대해 좀 더 공부할 필요가 있어 보인다.
