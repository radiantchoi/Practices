
class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var result = -1
        
        if target < nums[(nums.count/2)] {
            for i in 0..<nums.count/2 {
                if nums[i] == target {
                    result = i
                }
            }
        } else {
            for j in nums.count/2..<nums.count {
                if nums[j] == target {
                    result = j
                }
            }
        }
        
        return result
    }
}

// 기본값이 주어졌다는 것에 유의하자구~
