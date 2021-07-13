
class Solution {
    func evaluate(_ s: String, _ knowledge: [[String]]) -> String {
        let spread = s.map { String($0) }
        
        var i = 0
        var answer: String = ""
        var hash = [String:String]()
        
        for j in 0..<knowledge.count {
            hash[knowledge[j][0]] = knowledge[j][1]
        }
        
        while i < s.count {
            if spread[i] == "(" {
                var holder = [String]()
                while true {
                    i += 1
                    holder.append(spread[i])
                    if spread[i] == ")" {
                        i += 1
                        break
                    }
                }
                holder.removeLast()
                let keyword = holder.joined()
                let data = hash[keyword] ?? "?"
                answer += data
            } else {
                answer += spread[i]
                i += 1
            }
        }
        
        return answer
        
    }
}

// 시간복잡도 이슈 발생, 개보수 필요 (테스트 케이스는 통과)
