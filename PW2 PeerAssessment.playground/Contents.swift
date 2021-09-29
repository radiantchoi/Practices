// 프로그래머스 위클리 챌린지 2주차 상호 평가

import Foundation

func solution(_ scores:[[Int]]) -> String {
    var result: String = ""
    let n = scores.count
    
    for i in 0..<n {
        var personal = [Int]()
        
        var maxCount = 0
        var minCount = 0
        
        for k in 0..<n {
            personal.append(scores[k][i])
        }
        
        for m in personal {
            if m == personal.max()! {
                maxCount += 1
            } else if m == personal.min()! {
                minCount += 1
            }
        }

        if maxCount == 1 && personal[i] == personal.max()! {
            personal.remove(at: i)
        } else if minCount == 1 && personal[i] == personal.min()! {
            personal.remove(at: i)
        }

        let total = personal.reduce(0, +)
        let avg = Double(total) / Double(personal.count)
        
        if avg >= 90 {
            result += "A"
        } else if avg >= 80 {
            result += "B"
        } else if avg >= 70 {
            result += "C"
        } else if avg >= 50 {
            result += "D"
        } else {
            result += "F"
        }
    }
    
    return result
}

// 자기가 자기를 평가한 건 두 가지 경우의 수가 같이 있을 수가 없지.. 이걸 간과하고 풀다가 괜히 돌아감
// 괜히 let 할거 var 한게 세 군데 있었지만, 불안하느니 그냥 var 쓰는게 나을지도?
