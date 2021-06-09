
class Solution {
    func checkArithmeticSubarrays(_ nums: [Int], _ l: [Int], _ r: [Int]) -> [Bool] {
        var answer: [Bool] = []
        
        for i in 0..<l.count {
            var carrier: [Int] = []
            for j in l[i]...r[i] {
                carrier.append(nums[j])
            }
            carrier.sort()
            answer.append(arithmetic(carrier))
            carrier.removeAll()
        }
        
        return answer
    }
    
    func arithmetic(_ n: [Int]) -> Bool {
        var result = true
        let diff = n[1] - n[0]
        
        for i in 1..<n.count {
            if n[i] - n[i-1] != diff {
                result = false
            }
        }
        
        return result
    }
}

// arithemetic 함수 안에서, 불필요한 else 케이스를 만들어서 false가 나와야 하는 상황에도 뒤에 나오는 true로 덮어써지는 일이 발생했다.
// 하나라도 조건을 만족하지 못하면 false가 출력되어야 하므로, 기본값을 true로 해놓고 하나라도 틀렸을 시 false가 되게 하는 것이 바람직하다.
// 동시에, 조건을 만족하는 케이스는 기본값을 건드리지 않게 하는 것이 좋다.
