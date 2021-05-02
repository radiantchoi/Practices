import UIKit

class Solution {
    func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
        var result: [Int] = []
        for n in 0..<nums.count {
            result.insert(nums[n], at: index[n])
        }
        
        return result
    }
}

// insert에 대해 알면 간단히 풀 수 있었던 문제.
