import UIKit

class Solution {
    func numberOfSteps(_ num: Int) -> Int {
        var number = num
        var steps = 0
        
        while number > 0 {
            if number % 2 == 0 {
                number /= 2
                steps += 1
            } else {
                number -= 1
                steps += 1
            }
        }
        
        return steps
    }
}

// if와 while만으로 해결되는 간단한 문제
// if, for, while만 알면, 문법에 익숙하지 않다고 문제를 못 푼다는 핑계를 댈 수 없다던 말을 기억하자. 찾아보고 습득하고 연습하면 된다.
