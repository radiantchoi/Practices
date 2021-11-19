
class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {

        
        let spread1 = s1.map { String($0) }.sorted()
        let spread2 = s2.map { String($0) }
        var result = false
        let length = spread1.count - 1
        
        if spread1.count > spread2.count {
            return false
        }
        
        for i in 0..<(spread2.count-length) {
            let source = spread2[i...(i+length)].sorted()
            if spread1 == source {
                result = true
                break
            } else {
                continue
            }
        }
        
        return result
    }
}

// 시간이 매우 오래 걸렸지만, 아무튼 제한시간 자체는 통과한 풀이.
