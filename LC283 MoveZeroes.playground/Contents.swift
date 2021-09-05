
class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var zeros = 0
        for i in 0..<nums.count {
            if nums[i] == 0 {
                zeros += 1
            }
        }
        
        nums.removeAll { $0 == 0 }
        
        for _ in 0..<zeros {
            nums.append(0)
        }
    }
}

// 특정 조건을 만족하는 배열의 원소를 지우고 싶다면 removeAll(where: )을 이용하면 된다.
