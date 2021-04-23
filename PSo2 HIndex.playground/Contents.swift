import UIKit

import Foundation

func solution(_ citations:[Int]) -> Int {
    var result = 0
    let cit = citations.sorted { $0 > $1 } // 논문의 인용 횟수를 정렬해서 받는다
    
    for i in 0..<cit.count {
        if i + 1 <= cit[i] { // 각 인덱스와 숫자를 비교 - +1을 해줘야 함에 유의.
            result = i + 1 // i+1회 이상 인용된 논문이 i+1편 이상이라는 문제의 조건에 부합
        }
    }
    
    return result
}
