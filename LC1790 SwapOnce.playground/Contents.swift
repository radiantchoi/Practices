class Solution {
    func areAlmostEqual(_ s1: String, _ s2: String) -> Bool {
        if s1 == s2 { return true }
        
        let spread1 = s1.map { String($0) }
        let spread2 = s2.map { String($0) }
        var storage1 = [(String, Int)]()
        var storage2 = [(String, Int)]()
        
        for i in 0..<spread1.count {
            if spread1[i] != spread2[i] {
                storage1.append((spread1[i], i))
                storage2.append((spread2[i], i))
            }
            
            if storage1.count > 2 || storage2.count > 2 { return false }
        }
        
        if storage1.count != 2 || storage2.count != 2 { return false }
        
        if storage1[0].0 == storage2[1].0 && storage1[1].0 == storage2[0].0 {
            return true
        } else {
            return false
        }
    }
}

// 잔꾀를 부리지 말자.
// 답이 성립할 조건에 대해 빈틈없이 생각하자.
