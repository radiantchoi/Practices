class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var sums = [0]
        var index = nums.startIndex
        while index < nums.count {
            sums.append(nums[index] + sums[index])
            index = nums.index(after: index)
        }
        
        var result = 0
        
        var addLength = 0
        while addLength < sums.count {
            for j in 0..<sums.count - addLength - 1 {
                let left = j
                let right = j + addLength + 1
                if sums[right] - sums[left] == k {
                    result += 1
                }
            }
            
            addLength += 1
        }
        
        return result
    }
}

// hash 안써도 돼!
// prefix sum에 대해서는 익혀 두는 편이 좋겠다.
