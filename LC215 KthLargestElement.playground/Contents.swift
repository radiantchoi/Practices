
class Solution {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        var numsArray = nums.sorted()
        
        return numsArray[nums.count-k]
    }
}

// 머지..?
