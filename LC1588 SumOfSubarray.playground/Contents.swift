import UIKit

// 참조한 풀이 : https://leetcode.com/problems/sum-of-all-odd-length-subarrays/discuss/883832/Swift-Simple

class Solution {
    func sumOddLengthSubarrays(_ arr: [Int]) -> Int {
        var arrayLength = 0 // 배열 원소 갯수가 0인 것은 고려하지 않으며, "홀수" 개의 원소를 합치는데 도움을 줄 변수
        var result = 0
        
        while arrayLength <= arr.count { // 일종의 부분집합을 구하는 것이므로, 길이가 원래 배열의 길이를 넘으면 안 된다.
            for i in 0..<arr.count - arrayLength { // 뒤에 arrayLength를 더해줘야 하므로, 범위도 넘치지 않게 설정
                result += arr[i...i + arrayLength].reduce(0, +) // 배열 인덱싱을 잘 활용한 사례.
                // 여기서 기본적으로 시작할 때 arr[i]를 result에 더해 주므로, arrayLength는 짝수가 되어야 한다.
                // 그래야 1개, 3개, 5개, ... 원소를 reduce를 통해 더해서 result에 합칠 수 있기 때문
            }
            arrayLength += 2 // 길이가 홀수인 부분집합에 대해서 구하는 것이므로
        }
        
        return result
    }
}

// 좀 더 유연하게, 깊이 생각해야 알고리즘 문제를 잘 풀 수 있을 것 같다.
// reduce의 사용법에 대해서도 잘 익혀두자. 배열의 각 항목에 대해 처리하는 것으로, reduce(초기 값=항등원, 클로저)
// 클로저의 형태는 { (s1: Int, s2: Int) -> Int in return s1 + s2 } 처럼
// 이걸 축약하면 { $0 + $1 } 처럼 되는 것이다.


// 또 다른 참조 : https://codereview.stackexchange.com/questions/213565/generating-all-subarrays-from-an-array-of-integer
// 주어진 배열의 전체 부분집합 구하기

/*
var sub: [[Int]] = [[]]
        
for i in arr {
    for subArray in sub {
        sub.append(subArray + [i])
    }
}
*/

// 이 문제의 경우, 단순히 모든 부분집합이 아닌, 원래 배열과 순서가 같은 서브 배열만 따져서 더해야 한다는 조건이 있었다.
// 그래서 이 알고리즘을 사용했을 때, 에러가 났던 것.
