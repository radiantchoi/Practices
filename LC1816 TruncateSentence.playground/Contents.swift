import UIKit

class Solution {
    func truncateSentence(_ s: String, _ k: Int) -> String {
        var sentence: [String] = s.components(separatedBy: " ")

        while true {
            if sentence.count == k {
                break
            }
            sentence.removeLast()
        }
        
        return sentence.joined(separator: " ")
    }
}

// components(separatedBy: ) 는 종종 쓸 데가 있을 것 같다. 글자로 뿌리는 게 아니라 단어로 뿌리려면 이렇게 해야 한다는 거지.
// k라는 숫자의 존재 때문에 다소 헤맸는데, while을 돌려서 쉽게 해결
// 단, break가 어느 타이밍에 들어가야 할지 생각 잘 해야 한다.
// 나아가 코드의 흐름을 위에서 아래로 읽는 것에 주의하자. 논리의 흐름 방향과 일치해야 한다.
