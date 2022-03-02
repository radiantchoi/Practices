class Solution {
    func hammingWeight(_ n: Int) -> Int {
        let bin = String(n, radix: 2)
        let bits = bin.map { String($0) }
        var count = 0
        
        for bit in bits {
            if bit == "1" { count += 1 }
        }
        
        return count
    }
}

// 알아둘 것 : 진수 변환. String(숫자, radix: 진법)
