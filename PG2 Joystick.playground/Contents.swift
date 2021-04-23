import UIKit

import Foundation

import Foundation

func solution(_ name:String) -> Int { // https://nsios.tistory.com/125 참조함
    var result = 0
    let inputName = name.map { ($0) }
    let asciiA = 65
    let asciiZ = 90
    
    func stickMove(_ c: Character) -> Int { // 상하로 움직여서 글자 맞추는 함수 구현 (이를 위해 아스키 코드가 필요)
        let ascii = Int(c.asciiValue!) // 주어진 글자의 아스키 코드
        let front = ascii - asciiA // 앞으로(위로?) 움직여야 하는 횟수
        let back = asciiZ + 1 - ascii // 뒤로 움직여야 하는 횟수
        return min(front, back) // 중 작은 걸 고른다
    }
    
    for n in 0..<inputName.count {
        result += stickMove(inputName[n]) // 해당 과정을 결과, 즉 움직여야 하는 횟수에 더해 준다
    }
    
    var count = inputName.count - 1 //좌로 계속 움직일 경우, 리스트 전체 길이-1 번만큼 움직이게 될 것이므로
    for m in 0..<inputName.count {
        if inputName[m] != "A" { // 글자가 A가 아니라면. 즉, 인풋값이 원래 A가 아니라면
             var nextIndex = m + 1 // 일단 다음 인덱스 번호
             while nextIndex < inputName.count && inputName[nextIndex] == "A" { // 리스트 끝까지 갈 동안, 그리고 다음 인덱스의 글자가 A라면
                 nextIndex += 1
             }
             let moved = m * 2 + inputName.count - nextIndex // 움직인 횟수 : 지금까지 온 거리*2(왔던 만큼 돌아가는 것 가정) 거기다가 문자열 수 - nextIndex는 마지막 인덱스까지의 거리
             count = min(moved, count) // 중 더 작은 것을 선택 (그리디)
        }
    }
    
    result += count // 좌우로 움직인 횟수를 더해 준다
    
    return result
}

// 이런 스타일의 문제는 역시 문자열을 리스트로 뿌려주는 방식이 편한 듯 하다
// 이 풀이의 경우 입력받은 문자열 자체는 건드리지 않고, 코드만 할당해서 차이만큼 결과값에 단지 더했을 뿐
// 알아둘 것 : a와 z의 아스키 코드 (65, 90), asciiValue
