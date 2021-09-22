// 참고한 풀이 : https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/discuss/313769/Swift

class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var low = 0
        var high = numbers.count-1
        // 이상이 문제 풀이에 쓰일 두 개의 포인터
        
        while high > low {
            var sum = numbers[low] + numbers[high] // 각각의 인덱스에 있는 변수를 더한 수
            if sum < target { low += 1 } // Array는 오름차순으로 정렬되어 있으므로, 합한 수가 작다면 로우 부분에서 올린다
            else if sum > target { high -= 1 } // 마찬가지로 수가 크다면 하이 부분에서 내린다
            else { return [low+1, high+1] } // 같다면 정답에 도달한 것이고, 1-based index로 제출해야 하므로 1을 더해 준다
        }
        
        return [] // 기본값은 이것
    }
}

// 두 가지 주의점이 있다.
// 하나는, two pointers 유형의 문제를 더 연습해야 한다는 것. 포인터가 두 가지인 것만으로도 Binary Search가 될 만 하다.
// 둘은, 너무 어렵게 생각하지 말 것. 중앙부터 무조건 나눠야 Binary Search라고 생각했지만 꼭 그런 것만은 아니다. 유형에 얽매이지 말고 논리 구조를 찾아보자.
