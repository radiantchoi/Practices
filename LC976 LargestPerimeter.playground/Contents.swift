class Solution {
    func largestPerimeter(_ nums: [Int]) -> Int {
        var result = 0
        let nums = nums.sorted()
        
        for i in (0..<nums.count - 2).reversed() {
            let lines = Array(nums[i...(i+2)])
            if lines[2] >= lines[0] + lines[1] {
                continue
            } else {
                result = lines.reduce(0, +)
                break
            }
        }
        
        return result
    }
}
