import UIKit

import Foundation

func solution(_ number:String, _ k:Int) -> String {
    let numbers: [Character] = number.map { $0 }
    var stack: [Character] = [] // 스택처럼 사용해 줄 배열
    var count = 0 // 숫자를 삭제한 횟수
    var anIndex = 0 // 인덱스를 훑기 위한 임의의 인덱스
    
    while count < k && anIndex < numbers.count { // 숫자를 충분히 제거하지 않았고, 주어진 숫자의 끝까지 훑지 않았을 경우
        guard let last = stack.last else { // last 변수를 stack 배열에 있는 마지막 수로 지정해주시오. 아니면~
            stack.append(numbers[anIndex]) // 입력된 수에 있던 숫자를 하나 더 스택에 쌓고
            anIndex += 1 // 임의의 인덱스 하나 늘리기
            continue // while문을 쭉쭉 진행
        }
        
        if last < numbers[anIndex] { // 임의의 인덱스에 있는 숫자보다 마지막 숫자가 작을 경우
            stack.removeLast() // 뎅겅
            count += 1
            continue
        }
        
        stack.append(numbers[anIndex]) // 위의 모든 것을 거치고, 스택에 임의의 인덱스에 해당하는 숫자를 넣어준다
        anIndex += 1
    }
    
    if count >= k {
        stack.append(contentsOf: numbers[anIndex...]) // 삭제를 다 했다면, numbers에 남아 있던 수들을 다 끌어 온다
    }
    
    if anIndex >= numbers.count {
        return stack[0..<numbers.count - k].reduce(""){"\($0)\($1)"} // 숫자가 초과되었다면, 기대되는 수만큼만 출력
    }
    
    return stack.reduce(""){"\($0)\($1)"} // 문자열로 배열의 수 출력하기. map을 썼어도 됐을 뻔?
}

// 스택에 대한 이해가 필요한 문제. 한번쯤 더 살펴보는 것도 좋을 것 같다.
// 알아둘 것 : reduce, 스택에 대한 아이디어
