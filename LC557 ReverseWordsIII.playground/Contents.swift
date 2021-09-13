
class Solution {
    func reverseWords(_ s: String) -> String {
        var result = [String]()
        let spread = s.map { String($0) }
        var startIndex = 0
        
        for i in 0..<spread.count {
            if spread[i] == " " {
                var slice = spread[startIndex..<i]
                var holder = [String]()
                while slice.count > 0 {
                    holder.append(slice.removeLast())
                }
                holder.append(" ")
                result += holder
                startIndex = i+1
            }
        }
        
        for j in (startIndex..<spread.count).reversed() {
            result.append(spread[j])
        }
        
        return result.joined()
        
    }
}

