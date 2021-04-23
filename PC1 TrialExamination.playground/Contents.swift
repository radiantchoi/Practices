import UIKit

import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let pick1 = [1, 2, 3, 4, 5] // 각 학생들의 답에 관한 배열 - 반복
    let pick2 = [2, 1, 2, 3, 2, 4, 2, 5]
    let pick3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    var score1 = 0 // 각 학생들의 점수
    var score2 = 0
    var score3 = 0
    var result: [Int] = []
    
    for n in 0..<answers.count {
        if answers[n] == pick1[n % 5] { // 문제의 인덱스를 나누기한 나머지가 반복되는 답의 번호
            score1 += 1
        }
        
        if answers[n] == pick2[n % 8] {
            score2 += 1
        }
        
        if answers[n] == pick3[n % 10] {
            score3 += 1
        }
    }
    
    if max(score1, score2, score3) == score1 { // max는 최대값이 여러 개면 여러 개를 뽑아내는듯?
        result.append(1)
    }
    if max(score1, score2, score3) == score2 {
        result.append(2)
    }
    if max(score1, score2, score3) == score3 {
        result.append(3)
    }
    // 차례대로 더하면 별도의 정리를 할 필요가 없다
    
    return result
}
