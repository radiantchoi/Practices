class Solution {
    func largestOddNumber(_ num: String) -> String {
        var spread = num.map { String($0) }
        var result = ""
        
        while !spread.isEmpty {
            let number = Int(spread[spread.count-1])!
            if number % 2 == 0 {
                spread.removeLast()
            } else {
                result = spread.joined()
                break
            }
        }
        
        return result
    }
}

// 문제에서 주어진 조건은 "Substring". 즉, 순서를 바꾸면 안 된다. 그렇기 때문에 맨 끝 숫자가 홀수인지 짝수인지만 보면 되는 것이다.
