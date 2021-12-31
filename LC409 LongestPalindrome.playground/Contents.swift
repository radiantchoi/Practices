class Solution {
    func longestPalindrome(_ s: String) -> Int {
        var hash = [String: Int]()
        let spread = s.map { String($0) }
        var result = 0
        
        for letter in spread {
            if hash.keys.contains(letter) {
                hash[letter]! += 1
            } else {
                hash[letter] = 1
            }
        }
        
        var oddValues = [Int]()
        
        for n in hash.values {
            if n % 2 == 0 {
                result += n
            } else {
                oddValues.append(n)
            }
        }
        
        if !oddValues.isEmpty {
            oddValues.sort()
            let maxOdd = oddValues.removeLast()
            for m in oddValues {
                result += (m-1)
            }
            result += maxOdd
        }
        
        return result
    }
}

// 회문에 대해 잘못 이해해서 시간이 좀 끌렸다.
// 가장 큰 홀수는 그냥 더해 주고, 나머지 홀수들은 1을 빼서 어쨌든 결과에 더해주면 되는 것.
