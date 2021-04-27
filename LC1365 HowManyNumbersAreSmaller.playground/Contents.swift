import UIKit

class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var result = Array(repeating: 0, count: nums.count)
        
        for i in 0..<nums.count {
            for j in 0..<nums.count {
                if i != j && nums[i] > nums[j] {
                    result[i] += 1
                }
            }
        }
        
        return result
    }
}

// 미리 배열을 만들어 놓고 해서 그런지, 공간을 굉장히 적게 차지하게 결과가 나왔다.
// 사실상 문제에서 거의 조건을 던져준 것이나 다름없어서, 풀기 용이했다.
