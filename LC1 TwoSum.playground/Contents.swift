
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var answer = [Int]()
        
        for i in 0..<nums.count-1 {
            for j in i+1..<nums.count {
                if nums[i] + nums[j] == target {
                    answer = [i, j]
                    break
                }
            }
        }
        
        return answer
    }
}

// 기본기부터 다시 다지는 차원에서, 이지 난이도 문제부터 곁들이기로 함.
