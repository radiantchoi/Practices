
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


class Solution {
    func reverseWords(_ s: String) -> String {
        var answer: String = ""
        var spread = s.map { String($0) }
        var left = 0
        var right = 0
        
        while right < spread.count {
            if spread[right] == " " {
                var holder = spread[left..<right]
                holder.reverse()
                answer += holder.joined()
                answer += " "
                left = right+1
                right += 1
            } else if right == spread.count - 1 {
                var holder = spread[left...right]
                holder.reverse()
                answer += holder.joined()
                break
            } else {
                right += 1
            }
        }
        
        return answer
        
    }
}

// 2개의 포인터를 이용해 쪼오금 더 걸리는 시간이 줄어든 버전
