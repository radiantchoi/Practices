import UIKit

import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var result = n - lost.count
    var lostStudent = lost
    var reserveStudent = reserve
    
    for m in 0..<lostStudent.count { // 두 벌의 옷을 가진 학생이 한 벌 도난당했을 경우
        for n in 0..<reserveStudent.count {
            if lostStudent[m] == reserveStudent[n] {
                lostStudent[m] = 0 // 일종의 initialize
                reserveStudent[n] = 0
                result += 1 // lost에 있던 학생을 빼 줬으므로, 해당 학생이 수업에 다시 참여할 수 있게 됐다는 사실 명시
                break
            }
        }
    }
    
    for i in 0..<lostStudent.count {
        for j in 0..<reserveStudent.count {
            if lostStudent[i] == 0 || reserveStudent[j] == 0 { // 이미 체크한 경우
                continue
            } else if lostStudent[i]+1 == reserveStudent[j] || lostStudent[i]-1 == reserveStudent[j] {
                lostStudent[i] = 0 // 체크한 경우의 수를 0으로 바꿔 준다
                reserveStudent[j] = 0
                result += 1
            }
        }
    }
    
    return result
}
