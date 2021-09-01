// 참고한 풀이 : https://leetcode.com/problems/maximum-subarray/discuss/299570/Swift

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var maximum = 0 // 이게 왜 maximum인지는 뒤에 나옴
        var result = Int.min
        // 문제에서 제시되는 원소의 범위는 정수이므로, 정수 중의 최솟값을 할당하여 결과 도출에 용이하게 함
        
        for i in 0..<nums.count {
            maximum = max(nums[i], nums[i]+maximum)
            // 해당 원소나, 해당 원소 이전까지의 값을 합한 것 중 최댓값이 maximum에 들어가게 된다(!)
            result = max(result, maximum)
            // 결과값은, 기존의 최댓값과 새로운 최댓값 중 더 큰 것으로 정해진다
        }
        
        return result
    }
}

// 비슷한 계열 문제 중 난이도가 더 높은 것은 이걸로 풀리리라 생각하진 않는다..
