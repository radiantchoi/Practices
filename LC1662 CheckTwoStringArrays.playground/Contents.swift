import UIKit

class Solution {
    func arrayStringsAreEqual(_ word1: [String], _ word2: [String]) -> Bool {
        let firstWord = word1.joined()
        let secondWord = word2.joined()
        if firstWord == secondWord { return true } else { return false }
    }
}

// joined를 사용할 줄 아느냐고 물어보는 정도의 문제..
