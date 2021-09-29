
class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var answer = [Int]()
        for n in nums {
            answer.append(n*n)
        }
        
        answer.sort()
        return answer
    }
}

// ㅎㅇ
