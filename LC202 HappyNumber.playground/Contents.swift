class Solution {
    func isHappy(_ n: Int) -> Bool {
        if n == 1 || n == 7 { return true } else if n < 10 { return false }
        
        var next = 0
        var now = n
        
        while now != 0 {
            let digit = now % 10
            next += digit * digit
            now /= 10
        }
        
        return isHappy(next)
    }
}

// Happy Number가 뭔지 알고 있으면 풀기 용이한 문제. 알아두자.
