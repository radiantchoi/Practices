
class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()
        var spread = Array(s)
        
        for p in spread {
            if p == ")" {
                if !stack.isEmpty && stack[stack.count-1] == "(" {
                    stack.removeLast()
                } else {
                    stack.append(p)
                }
            } else if p == "}" {
                if !stack.isEmpty && stack[stack.count-1] == "{" {
                    stack.removeLast()
                } else {
                    stack.append(p)
                }
            } else if p == "]" {
                if !stack.isEmpty && stack[stack.count-1] == "[" {
                    stack.removeLast()
                } else {
                    stack.append(p)
                }
            } else {
                stack.append(p)
            }
        }
        
        if stack.isEmpty {
            return true
        } else {
            return false
        }
    }
}
