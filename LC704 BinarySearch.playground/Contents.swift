
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
// 엄밀히 말하면 이 코드의 실행속도는 1/2n 즉 O(n)이다. 개선의 여지가 있다.

class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count-1
        
        while left <= right {
            var center = (left + right) / 2
            if nums[center] > target {
                right -= 1
            } else if nums[center] < target {
                left += 1
            } else {
                return center
            }
        }
        
        return -1
    }
}

// 문제에서 강조하는 바에 따라 O(log n)으로 다시 짜 본 코드.
// 이진 탐색을 할 땐 레프트 라이트 포인터를 만들어 두고 2로 나누면 유용하다. 잊지 말자.
// 근데 실행속도는 위의 거랑 비슷하게 떠서 좀 실망
