import UIKit

class Solution {
    func subtractProductAndSum(_ n: Int) -> Int {
        let number = String(n)
        let numberArray: [String] = number.map{ String($0) }
        var product = 1
        var sum = 0
        
        for i in numberArray {
            product *= Int(i)!
            sum += Int(i)!
        }
        
        return product - sum
    }
}

// 문자열 다루기에 대해서 호되게 배우고 있는 듯 하다.
