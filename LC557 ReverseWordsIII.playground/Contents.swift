
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

class Solution {
    func reverseWords(_ s: String) -> String {
        var answer = ""
        let words = s.split(separator: " ")
        
        for word in words {
            var container = word.map { String($0) }
            var left = 0
            var right = container.count-1
            
            while left < right {
                var holder = container[left]
                container[left] = container[right]
                container[right] = holder
                left += 1
                right -= 1
            }
            
            answer += container.joined()
            answer += " "
        }
        
        var answerArray = answer.map { String($0) }
        answerArray.removeLast()
        answer = answerArray.joined()
        
        return answer
    }
}

// 스플릿을 사용해 단어 단위로 처리한 버전. 이게 출제 의도에 근접하지 않았을까?
// 밑에 마지막 공백을 제거하는 방법은 더 좋은 방법이 있을 수도 있다.
