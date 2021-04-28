import UIKit

class Solution {
    func restoreString(_ s: String, _ indices: [Int]) -> String {
        var restorer: [String] = Array(repeating: "", count: s.count)
        
        for i in 0..<s.count {
            restorer[indices[i]] = String(s[s.index(s.startIndex, offsetBy: i)])
        }
        
        return restorer.joined()
    }
}

// 스위프트는 문자열 인덱싱이 매우 불편하다고 느꼈다.
