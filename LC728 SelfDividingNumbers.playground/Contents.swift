

class Solution {
    func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
        var result: [Int] = []
        
        for n in left...right {
            if selfDivide(n) == true {
                result.append(n)
            }
        }
        
        return result
    }
    
    func selfDivide(_ n: Int) -> Bool {
        var result = false
        let digit = String(n).map { String($0) }
        var digits: [Int] = []
        
        for i in 0..<digit.count {
            digits.append(Int(digit[i])!)
        }
        
        var counting = 0 // 이 변수를 반복문 밖에 둬야 한다. 그렇지 않으면, 한 자리 수만 true로 나올 것이다.
        for j in digits {
            if j == 0 {
                break
            } else {
                if n % j == 0 {
                    counting += 1
                }
            }
            if counting == digits.count {
                result = true
            }
        }
        
        return result
    }
}



