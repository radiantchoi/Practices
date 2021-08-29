
class Solution {
    func countBits(_ n: Int) -> [Int] {
        var bits = [Int]()
        var square = 0
        var mult = 1
        
        while mult < n {
            mult *= 2
            square += 1
        }
        
        bits.append(0)
        for _ in 0...square {
            var holder = bits
            for i in 0..<bits.count {
                holder[i] += 1
            }
            bits += holder
        }
        
        let result = Array(bits[0...n])
        return result
    }
}
