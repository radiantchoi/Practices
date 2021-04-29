import UIKit

class Solution {
    func decompressRLElist(_ nums: [Int]) -> [Int] {
        var result: Array<Int> = []
        
        for i in 0..<nums.count {
            if i % 2 == 0 {
                var numsList = Array(repeating: nums[i+1], count: nums[i]) // let으로 써도 괜찮겠다는 메세지가 뜬다만, 반복문 안에서 계속 바뀔 것이라 생각했어서 var로 설정
                result.append(contentsOf: numsList) // 리스트간의 병합으로 쓰고 싶다면 contentsOf을 사용해야 함에 주의
            }
        }
        
        return result
    }
}

// 문제의 조건에 따라, i개의 i+1이라고 생각한 것이 큰 도움이 됐다.
