
class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        
        if k > 0 && nums.count > 1 {
            var count = 0
            if k > nums.count {
                count = k % nums.count
            } else {
                count = k
            }
            
            var part = nums[nums.count-count...nums.count-1]
        
            while count > 0 {
                nums.removeLast()
                count -= 1
            }
        
            nums = part + nums
        }
        
    }
}

// 시간복잡도를 줄일 때의 철칙 : 1스텝씩 진행할 것을 한꺼번에 진행하기
