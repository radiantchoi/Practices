class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var result = [String]()
        
        for i in 0..<n {
            let index = i+1
            if index % 3 == 0 && index % 5 == 0 {
                result.append("FizzBuzz")
            } else if index % 3 == 0 {
                result.append("Fizz")
            } else if index % 5 == 0 {
                result.append("Buzz")
            } else {
                result.append(String(describing: index))
            }
        }
        
        return result
    }
}

// 1-index임에 주의
