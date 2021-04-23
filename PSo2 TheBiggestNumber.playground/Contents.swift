import UIKit

import Foundation

func solution(_ numbers:[Int]) -> String {
    var result = ""
    var stringed = numbers.map { String($0) } // 입력받은 숫자 리스트를 문자열 타입으로 변경해 배열에 할당
    stringed.sort { $0 + $1 > $1 + $0 } // 솔직히 나도 이게 되나 싶었다.. 조합해서 더 큰 수가 나오게끔 정렬
    
    result = stringed.joined()
    if let realNum = Int(result) {
        return String(realNum)
    } // 숫자로 바꾸고 다시 문자로 바꾸는 과정. 그래야 0이 반복되는 사태를 방지할 수 있다.
    
    return result
}

// sort가 가진 강력한 기능인 것인지.. 문자열을 더해서 잇고, 그 크기를 비교할 수 있다는 것은 충격적이었다.
// 알아둬야 할 것 : sort의 기능, 000을 없애는 아이디어
