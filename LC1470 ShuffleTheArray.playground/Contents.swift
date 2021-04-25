import UIKit

class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var resultArray = Array(repeating: 0, count: nums.count)
        var evenArray: [Int] = []
        var oddArray: [Int] = []
        
        for m in 0..<nums.count {
            if m < n {
                evenArray.append(nums[m])
            } else {
                oddArray.append(nums[m])
            }
        }
        
        for i in 0..<resultArray.count {
            if i % 2 == 0 {
                resultArray[i] = evenArray.removeFirst()
            } else {
                resultArray[i] = oddArray.removeFirst()
            }
        }
        
        return resultArray
    }
}

// 배열을 셔플하는 문제라고 하는데, 홀수/짝수 인덱스별로 나눠서 하나씩 섞었다.
// 라이브러리에 아직 익숙지 않은 풀이법. 시간복잡도를 더 낮출 풀이를 생각해보자.
