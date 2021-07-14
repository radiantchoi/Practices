
class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var hash = [Int: Int]()
        var answer = 0
        
        for n in nums {
            if hash.keys.contains(n) {
                hash[n]! += 1
            } else {
                hash[n] = 1
            }
        }
        
        for (key, value) in hash {
            if value == 1 {
                answer = key
            }
        }
        
        return answer
    }
}

// 딕셔너리에서 키로 값을 불러올 때는 옵셔널 언래핑을 해 줘야 한다.
// 어쨌든 return으로 값이 나와야 하므로 함수 안에 answer 변수를 미리 설정해야 한다.
// key가 아니라 keys다.
