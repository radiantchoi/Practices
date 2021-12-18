
class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var hash = [Int: Int]()
        var answer = [Int]()
        
        for n in nums {
            if hash.keys.contains(n) {
                hash[n]! += 1
            } else {
                hash[n] = 1
            }
        }
        
        var numbers = hash.values.sorted().reversed()[0...(k-1)]
        
        for (key, value) in hash {
            if numbers.contains(value) {
                answer.append(key)
            }
        }
        
        return answer
    }
}

// 이걸 예전엔 왜 못 풀었지??;;
