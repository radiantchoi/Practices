
class Solution {
    func minAddToMakeValid(_ s: String) -> Int {
        let par: [String] = s.map { String($0) }
        var stack = [String]()

        
        for i in 0..<par.count {
            if par[i] == "(" {
                stack.append(par[i])
            } else {
                if !stack.isEmpty {
                    if stack[stack.count-1] == "(" {
                        stack.removeLast()
                    } else {
                        stack.append(par[i])
                    }
                } else {
                    stack.append(par[i])
                }
            }
        }
        
        return stack.count
        
    }
}

// 유사한 문제를 풀어봤기에, 스택의 원리를 사용하면 된다는 것을 알고 있었다.
// 또한 예시 케이스에, 단순 갯수만으로 판단하지 말라고 친절하게 설명도 해 줬다.
// 근데, 스위프트의 배열에서는 마이너스 인덱스를 못 쓰나보다??
