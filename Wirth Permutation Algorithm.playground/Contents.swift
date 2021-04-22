import UIKit

import Foundation

func permutation<T>(_ a: [T], _ n: Int) { // Wirth 순열 알고리즘
    if n == 0 { // 함수에 쓰인 대로 따라가다 보면 n은 0이 될 것이므로
         print(a) // 현재 입력된 배열 출력
    } else {
        var a = a
        permutation(a, n-1) //재귀 호출
        for i in 0..<n {
            a.swapAt(i, n) // n과 i의 자리를 바꿔준다
            permutation(a, n-1) // 재귀호출함으로써 자리가 바뀐 경우의 수를 계산
            a.swapAt(i, n) // 마지막엔 다시 i와 n의 위치를 제자리로 돌려준다. 다음 경우의 수를 계산할 때 뒤죽박죽이 되지 않기 위함
        }
    }
}

var testing = [1, 2, 3]
print(permutation(testing, 1))
