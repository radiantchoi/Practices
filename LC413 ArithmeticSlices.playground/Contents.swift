// 참고한 풀이 : https://leetcode.com/problems/arithmetic-slices/discuss/1071056/Simple-Swift-Solution

class Solution {
    func numberOfArithmeticSlices(_ nums: [Int]) -> Int {
        if nums.count < 3 {
            return 0 // 주어진 배열의 길이가 3 미만인 경우는 논할 필요가 없다
        }
        
        var result = 0
        var count = 0
        
        for i in 2..<nums.count { // i-2까지는 해야 돼서
            if nums[i-1] - nums[i-2] == nums[i] - nums[i-1] { // arithmetic하다면
                count += 1
                result += count // 이게, 삼각형의 단 수와 같아질 수 있다는 것을 알았어야 했다.
                // 1, 2, 3, 4, 5를 예로 들면, arithmetic한 배열은 6개가 나온다. 1+2+3개
            } else {
                count = 0 // 최소 조건조차 만족시키지 못한다면 해당 i에서 출발하는 arithmetic한 배열은 0개
            }
        }
        
        return result
        
    }
}

// 자료의 생김새를 보고 시간복잡도를 줄일 뭔가가 필요하다고 생각했을 뿐, 그것을 생각해내지 못했다.
// 연습이 부족해서 생긴 현상인 것 같다. 더욱 철저히 연습할 수 있도록 하자.
