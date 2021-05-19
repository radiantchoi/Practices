import UIKit

class Solution {
    func countConsistentStrings(_ allowed: String, _ words: [String]) -> Int {
        var count = 0
        let allowedArray: [String] = allowed.map { String($0) } // 이런 식으로 글자를 뿌려주는 게 편하다.
        var trueFalse = Array(repeating: true, count: words.count) // 풀이의 핵심
        
        for i in 0..<words.count {
            let wordsArray = words[i].map { String($0) } // 주어진 각 문장을 배열에 뿌려 주고
            for j in 0..<wordsArray.count {
                if !allowedArray.contains(wordsArray[j]) { // "not contains" 즉 허용된 것을 벗어난 원소가 있으면
                    trueFalse[i] = false // 해당 문장에 해당하는 true를 false로 바꿔 준다
                } else {
                    continue
                }
            }
        }
        
        count = trueFalse.filter { $0 == true }.count // 남아있는 true의 갯수가 곧 consistent string의 갯수
        return count
    }
}

// 문법을 잘 알아야 유연하게 대처할 수 있다.
// 알아둘 것 : contains, !, filter
