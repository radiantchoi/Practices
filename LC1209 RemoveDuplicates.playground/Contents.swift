// 참조 : https://leetcode.com/problems/remove-all-adjacent-duplicates-in-string-ii/discuss/392933/JavaC%2B%2BPython-Two-Pointers-and-Stack-Solution

class Solution {
    func removeDuplicates(_ s: String, _ k: Int) -> String {
        var stack = [(String, Int)]()
        var spread = s.map { String($0) }
        
        for letter in spread {
            if !stack.isEmpty {
                if stack[stack.count-1].0 == letter {
                    stack[stack.count-1].1 += 1
                    if stack[stack.count-1].1 == k {
                        stack.removeLast()
                    }
                } else {
                    stack.append((letter, 1))
                }
            } else {
                stack.append((letter, 1))
            }
        }
        
        var result = [String]()
        for pair in stack {
            result.append(String(repeating: pair.0, count: pair.1))
        }
        
        return result.joined()
    }
}

// 거의 다 왔는데 정말 아쉬웠다.
// 힌트 2번에서 pair를 정해야 한다는 것은 잘 몰랐다.
// 힌트 1번에서 스택을 사용해야 한다는 것은 알았다.
// 별개로 이렇게만 해도 중복이 다 지워진다는 게 신기하다.
// Array처럼 String도 repeating과 count를 활용해 반복되는 문자열을 만들 수 있다.
