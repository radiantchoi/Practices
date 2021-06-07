
class Solution {
    func minPairSum(_ nums: [Int]) -> Int {
        let numbers = nums.sorted()
        var sums: [Int] = []
        
        for i in 0..<numbers.count / 2 {
            sums.append(numbers[i] + numbers[numbers.count-1-i])
        }
        
        return sums.max()!
        
    }
}

// 기껏 numbers를 새로 잘 지정해놓고 입력받은 nums를 그대로 쓸 건 또 뭐냐
// 아이디어 잘 떠올려놓고 이런 사소한 데에서 실수하지 말자
