class Solution {
    func printVertically(_ s: String) -> [String] {
        let words = s.split(separator: " ")
        var maximum = 0
        
        for word in words {
            maximum = max(maximum, word.count)
        }
        
        var packs = Array(repeating: [String](), count: maximum)
        var result = [String]()
        
        for word in words {
            var spread = word.map { String($0) }
            while spread.count < maximum {
                spread.append(" ")
            }
            
            for i in 0..<packs.count {
                packs[i].append(spread[i])
            }
        }
        
        for pack in packs {
            var pack = pack
            while pack[pack.count-1] == " " {
                pack.removeLast()
            }
            result.append(pack.joined())
        }
        
        return result
    }
}

// 좋다좋다!!
