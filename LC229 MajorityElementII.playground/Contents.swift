
class Solution {
    func majorityElement(_ nums: [Int]) -> [Int] {
        let threshold = nums.count / 3
        var elements = [Int: Int]()
        var result = [Int]()
        
        for num in nums {
            if elements.keys.contains(num) {
                elements[num]! += 1
            } else {
                elements[num] = 1
            }
        }
        
        for (key, value) in elements {
            if value > threshold {
                result.append(key)
            }
        }
        
        return result
    }
}
