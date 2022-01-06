class Solution {
    func countGoodSubstrings(_ s: String) -> Int {
        if s.count < 3 {
            return 0
        }
        
        var result = 0
        let spread = Array(s)
        
        for i in 0..<spread.count - 2 {
            let sub = Array(spread[i...i+2])
            if sub[0] != sub[1] && sub[1] != sub[2] && sub[0] != sub[2] {
                result += 1
            }
        }
        
        return result
    }
}
