
class Solution {
    func minOperations(_ nums: [Int]) -> Int {
        var count = 0
        var divideByTwo = Array(repeating: 0, count: nums.count)
        
        for i in 0..<nums.count {
            var num = nums[i]
            if num > 0 { count += 1 }
            while num > 1 {
                if num % 2 == 1 {
                    num -= 1
                    count += 1
                } else {
                    num /= 2
                    divideByTwo[i] += 1
                }
            }
        }
        
        count += divideByTwo.max()!
        
        return count
        
    }
}

// 처음엔 모든 홀수가 그저 2의 거듭제곱-1인 것처럼 코드를 짰었다..
// 모든 원소에 대해 더해줘야 하는 1의 갯수를 세고, 2의 거듭제곱 횟수는 가장 큰 거 한번만 해주면 되는 거니까, 그대로 따랐다.
