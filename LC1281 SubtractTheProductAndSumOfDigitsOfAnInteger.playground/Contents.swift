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
// 다만 시간복잡도, 공간복잡도가 다 양호하게 떠서 그거에 대해서는 만족할 만 한 풀이

class Solution {
    func subtractProductAndSum(_ n: Int) -> Int {
        let stringed = String(n)
        let nums = stringed.map { Int(String($0))! }
        return nums.reduce(1, *) - nums.reduce(0, +)
    }
}

// 성장해서 돌아왔다!
