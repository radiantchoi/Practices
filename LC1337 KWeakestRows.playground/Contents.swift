class Solution {
    func kWeakestRows(_ mat: [[Int]], _ k: Int) -> [Int] {
        var powers = [(Int, Int)]()
        
        for i in 0..<mat.count {
            var power = mat[i].reduce(0, +)
            powers.append((i, power))
        }

        var weakest = powers.sorted { $0.1 < $1.1 }

        var result = [Int]()
        for n in 0..<k {
            result.append(weakest[n].0)
        }
        
        return result
    }
}

// 효율적인 방법을 찾기보다 그냥 푸는데 의의를 둔 듯 한..
