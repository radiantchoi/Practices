
class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var elements = [Int: Int]()
        
        for i in 0..<nums.count {
            if elements.keys.contains(nums[i]) {
                elements[nums[i]]! += 1
            } else {
                elements[nums[i]] = 1
            }
        }
        
        var result = Int()
        
        for (key, value) in elements {
            if value == elements.values.max()! {
                result = key
            }
        }
        
        return result
    }
}
