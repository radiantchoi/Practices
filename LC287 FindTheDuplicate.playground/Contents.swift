
class Solution {
    func findDuplicate(_ nums: [Int]) -> Int {
        var answer = 0
        
        var numsDict = [Int: Int]()
        
        for num in nums {
            if numsDict.keys.contains(num) {
                numsDict[num]! += 1
            } else {
                numsDict[num] = 1
            }
        }
        
        for (key, value) in numsDict {
            if value > 1 {
                answer = key
            }
        }
        
        return answer
    }
}

// 딕셔너리와 좀 더 친해질 수 있는 문제였다.
// contains도 유용하니까 알아두자.
