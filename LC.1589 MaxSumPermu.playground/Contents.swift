// 참조 : https://leetcode.com/problems/maximum-sum-obtained-of-any-permutation/discuss/854282/Swift-O(n-log-n)

class Solution {
    func maxSumRangeQuery(_ nums: [Int], _ requests: [[Int]]) -> Int {
        let n = nums.count
        var freq = Array(repeating: 0, count: n) // 기록용 배열
        
        for request in requests {
            freq[request[0]] += 1 // 첫번째 수는 한번 나왔으니까 넣어 준다
            if request[1] + 1 < n { // 만약 마지막 수가 n-1보다 작다면 즉, 마지막 인덱스가 아니라면
                freq[request[1] + 1] -= 1 // 해당 인덱스 + 1에서 1을 빼 준다 - 아마도 중복을 제거하기 위함
            }
        }
        
        for i in 1..<n {
            freq[i] += freq[i-1] // 앞의 수를 더해 주면, 나왔던 횟수가 된다.
        }
        
        var result = 0
        var numbers = nums.sorted()
        freq.sort()
        for i in 0..<freq.count {
            result += freq[i] * numbers[i]
        }
        
        return result % Int(pow(10.0, 9) + 7)
    }
}

// 문제를 푸는 요령 자체에는 도달하였으나, 시간 초과 때문에 통과하지 못했다.
// 시간을 줄이는 여러 방법에 대해 생각할 필요가 있다.

extension Solution {
    func maxSumRangeQuery2(_ nums: [Int], _ requests: [[Int]]) -> Int {
        var numbers = nums.sorted(by: >)
        var result = 0
        var hash = [Int: Int]()
        
        for request in requests {
            for n in request[0]...request[1] {
                if hash.keys.contains(n) {
                    hash[n]! += 1
                } else {
                    hash[n] = 1
                }
            }
        }
        
        var freq = Array(hash.values).sorted(by: >)
        for i in 0..<freq.count {
            result += freq[i] * numbers[i]
        }
        
        return result % Int(pow(10.0, 9) + 7)
    }
}
