class Solution {
    func arraySign(_ nums: [Int]) -> Int {
        var result = 1
        
        for n in nums {
            if n < 0 {
                result *= -1
            } else if n == 0 {
                result *= 0
                break
            }
        }
        
        return result
    }
}

// 작은 가용 메모리에선 두 자리 숫자를 여러번 곱하는 것 만으로도 오버플로우가 날 수 있구나..
