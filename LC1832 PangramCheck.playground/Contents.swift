import UIKit

class Solution {
    func checkIfPangram(_ sentence: String) -> Bool {
        var alphabets = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
        var sentences = sentence.map { String($0) }
        
        for i in 0..<alphabets.count {
            for n in 0..<sentences.count {
                if alphabets[i] == sentences[n] {
                    sentences[n] = "ok"
                    alphabets[i] = "ok"
                }
            }
        }
        
        alphabets.removeAll(where: { $0 == "ok" } )
        if alphabets.count > 0 {
            return false
        } else {
            return true
        }
    }
}

// 문자열 인덱싱에 관한 고민은 여전히 갖고 있다. 꼭 배열로 접근해야 하나?
// 더불어, 알파벳을 저렇게 하나하나 나열해야 되는지 의문이 들었지만, 고민할 시간에 코드로 짜자고 생각해서 일단 저렇게 나열했다.
// 다만, 알파벳 배열을 변수로 설정해서 결국 원하는 결과를 도출했으니 이렇게 푸는 게 맞는 것 같기도 하다. 일종의 그리디 방식
