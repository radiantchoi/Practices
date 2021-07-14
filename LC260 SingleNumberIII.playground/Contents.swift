
class Solution {
    func singleNumber(_ nums: [Int]) -> [Int] {
        var answer = [Int]()
        var hashMap = [Int: Int]()
        
        for n in nums {
            if hashMap.keys.contains(n) {
                hashMap[n]! += 1
            } else {
                hashMap[n] = 1
            }
        }
        
        for (key, value) in hashMap {
            if value == 1 {
                answer.append(key)
            }
        }
        
        return answer
    }
}

// 딕셔너리 연습용 문제. 많이 적응했다.
