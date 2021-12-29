class Solution {
    func thirdMax(_ nums: [Int]) -> Int {
        let numSet = Set(nums)
        let indicator = numSet.sorted(by: >)
        if indicator.count < 3 {
            return indicator[0]
        } else {
            return indicator[2]
        }
    }
}
