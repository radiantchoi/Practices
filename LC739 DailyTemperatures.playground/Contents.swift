// 참고한 풀이 : https://leetcode.com/problems/daily-temperatures/discuss/474759/Swift-Simple-Code

class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var result = Array(repeating: 0, count: temperatures.count)
        var stack = [Int]()
        
        for i in 0..<temperatures.count {
            while !stack.isEmpty && temperatures[stack.last!] < temperatures[i] {
                // 원래 스택에 들어가 있던 인덱스 위치의 온도보다 다음 어딘가의 인덱스의 온도가 더 클 경우에만 수행하는 작업
                result[stack.last!] = i - stack.last! // 두 인덱스 간의 차이를 값으로 저장 (이거는 원래 그렇게 하는 거다)
                stack.removeLast() // 요컨대, 스택에는 하나만 넣어 놓고 계속 돌리는 것. 스택 자료구조의 O(1) 성질을 잘 활용했다.
            }
            stack.append(i) // 일단 스택에 인덱스를 넣는 거다. 처음에는 이거만 실행될 것
        }
        return result
    }
}

// 머리가 잘 안 돌았던 것 같기도 하다..
// 고려해야 할 것의 갯수가 줄 수록 시간복잡도는 내려간다. 기억하자.
