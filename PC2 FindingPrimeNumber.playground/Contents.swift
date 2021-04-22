import UIKit

import Foundation

func solution(_ numbers:String) -> Int {

    func permutation(_ input: String) -> Array<Int> { // 힙을 활용한 순열 함수. https://codinglearn.tistory.com/45 참조함
        let inputArray = Array(input).map { String($0) } // inputArray는 입력받은 카드들을 다 늘어놓는 용도로 사용
        var resultArray: Set<Int> = [] // 중복 체크 및 제거를 위한 set으로의 설정

        func heap(_ array: [String], _ depth:Int, _ outNumber: Int) { // 힙 구현. 여기서는 depth가 숫자의 길이가 될 것.
            var arr = array // 입력받은 배열을 할당

            for index in depth..<arr.count{
                arr.swapAt(depth, index) // 순열을 구하는 함수를 구할 때 핵심적인 역할을 하는 swapAt
                resultArray.insert(Int(arr[0...depth].joined())!) /* Int는 옵셔널이라, 마지막에 강제 언래핑을 해 준다. Set 자료형이라 insert로 넣어 준다.
                 입력받은 배열의 0부터 문자열 길이까지 범위를 연결해서 하나의 수로 만들어 준다. */
                if depth < inputArray.count {
                    heap(arr, depth + 1, outNumber+1) // 길이가 1 길어진 숫자들의 조합을 뽑기 위해 재귀를 하되, if로 조건을 건 것.
                }
            }
        }

        heap(inputArray, 0, 1) // 지금 생각해보면 outNumber의 역할이 분명치는 않은데, 아마 정해진 길이의 숫자가 나오게끔 슬라이스하는 데 쓸만하지 않나 싶다. 아니면 이해를 돕거나

        return Array(resultArray)
    }

    func isPrime(_ n: Int) -> Bool { // 에라토스테네스의 체를 이용한 소수 판별 함수
        var result: Bool = true
        if n < 2 {
            result = false
        } else if n > 3 {
            for i in 2...Int(sqrt(Double(n))) { // n의 제곱근을 포함한 범위까지 계산해야 함에 주의!
                if n % i == 0 {
                    result = false
                }
            }
        }
        return result
    }

    let numbersArray = permutation(numbers)

    let primeArray = numbersArray.filter { isPrime($0) }

    return primeArray.count
}


// 다른 사람의 풀이

func combinations(_ array: [String]) -> Set<String> { // 최상단에 있는, 조합을 구하는 함수
    
    if array.count == 0 { return [] }

    let answerArray = (0..<array.count).flatMap { i -> [String] in
        var removedArray = array
        let elem = removedArray.remove(at: i)
        return [elem] + combinations(removedArray).map { elem + $0 }
    }

    return Set(answerArray)
}
