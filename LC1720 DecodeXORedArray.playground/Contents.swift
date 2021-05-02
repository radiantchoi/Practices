import UIKit

class Solution {
    func decode(_ encoded: [Int], _ first: Int) -> [Int] {
        var result: [Int] = []
        result.append(first)
        
        for n in 0..<encoded.count {
            result.append(result[n] ^ encoded[n])
        }
        
        return result
    }
}

// XOR에 대해 알고 있느냐는 문제. 나는 당연히 몰랐다..
// encoded[n] = result[n] xor result[n+1]이면, result[n] xor encoded[n]은 result[n+1]이라고 한다. 알아두자.
// 알아둘 것 : ^ (xor 연산자)
