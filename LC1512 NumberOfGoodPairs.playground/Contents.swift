import UIKit

class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var result = 0
        for i in 0..<nums.count {
            for j in 0..<nums.count {
                if nums[i] == nums[j] && i < j {
                    result += 1
                }
            }
        }
        
        return result
    }
}

// 기본적인 2중 반복문 문제. 나머지 조건은 문제에서 제시해준 것을 그대로 따르면 된다.
