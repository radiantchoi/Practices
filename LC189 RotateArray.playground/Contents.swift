
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

class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        var rotating = 0
        if k >= nums.count {
            rotating = k % nums.count
        } else {
            rotating = k
        }
        
        if rotating == 0 {
            return
        } else {
            var chunk = nums[(nums.count-rotating)...nums.count-1]
            nums.removeLast(rotating)
            nums = chunk + nums
        }
    }
}

// 전체적으로 결이 비슷하게 짰군

class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        var steps = nums.count - (k % nums.count)
        let numsExt = nums + nums
        
        nums = Array(numsExt[(steps)...(steps+nums.count-1)])
    }
}

// Sliding Window 방법론을 사용한 새 풀이!
