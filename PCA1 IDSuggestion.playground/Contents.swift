import UIKit

import Foundation

func solution(_ new_id:String) -> String {
    var result = ""
    var suggest = new_id

    suggest = suggest.lowercased() // 1단계

    var letters: [String] = suggest.map { String($0) }
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    let numbers = "0123456789"
    let marksList = ["-", "_", "."]
    let numbersList = numbers.map { String($0) }
    let alphabetList = alphabet.map { String($0) }
    for i in letters {
        if numbersList.contains(i) || alphabetList.contains(i) || marksList.contains(i) { // Swift에도 isLetter와 isNumber가 있으므로 참고해서 사용하자
            continue
        } else {
            letters.remove(at: letters.firstIndex(of: i)!) // 아예 상기 조건에 맞아야만 새 아이디 변수로 인정해주는 흐름도 가능하다
        }
    } // 2단계. letters는 전역변수

    suggest = letters.joined()
    while suggest.contains("..") {
        suggest = suggest.replacingOccurrences(of: "..", with: ".") // 3단계
    }

    letters = suggest.map { String($0) }
    if letters.first == "." { letters.removeFirst() } // 여기서도 hasPrefix와 hasSuffix를 썼으면 문자열 그대로인 상태로 풀 수 있었다
    if letters.last == "." { letters.removeLast() }
    // 4단계

    if letters.isEmpty {
        letters.append("a")
    } // 5단계

    while letters.count > 15 { //index와 offsetBy를 활용할 수도 있다 (문자열로 풀 경우)
        letters.removeLast()
    }
    if letters.first == "." { letters.removeFirst() }
    if letters.last == "." { letters.removeLast() }

    // 6단계

    while letters.count < 3 {
        letters.append(letters.last!)
    } // 7단계

    result = letters.joined()

    return result
}

// 리스트로 만드는 것과 문자열로 푸는 것, 일장일단이 있어 보인다. 리스트로 만들면 요소 컨트롤이 좀 더 쉽지만, 리스트를 만드는 시간이 걸린다.
// 알아둬야 할 것 : contains, firstIndex/lastIndex, first/last, removeFirst/removeLast, hasPrefix/hasSuffix
// 배웟지만 생각이 안나서 못 쓴 것들이 좀 있다. 해당 사항은 보완할 수 있도록 하자
