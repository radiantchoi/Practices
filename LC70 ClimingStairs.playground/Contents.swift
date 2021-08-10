
class Solution {
    func climbStairs(_ n: Int) -> Int {
        var fibo = [1, 1]
        var index = 1
        
        while index < n {
            fibo.append(fibo[index-1] + fibo[index])
            index += 1
        }
        
        return fibo[fibo.count-1]
    }
}

// 왜 피보나치 수열이 되는지는 이해를 못 했지만..
