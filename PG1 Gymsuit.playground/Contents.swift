import UIKit

import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var result = n - lost.count
    var lostStudent = lost
    var reserveStudent = reserve
    
    for m in 0..<lostStudent.count {
        for n in 0..<reserveStudent.count {
            if lostStudent[m] == reserveStudent[n] {
                lostStudent[m] = 0
                reserveStudent[n] = 0
                result += 1
                break
            }
        }
    }
    
    for i in 0..<lostStudent.count {
        for j in 0..<reserveStudent.count {
            if lostStudent[i] == 0 || reserveStudent[j] == 0 {
                continue
            } else if lostStudent[i]+1 == reserveStudent[j] || lostStudent[i]-1 == reserveStudent[j] {
                lostStudent[i] = 0
                reserveStudent[j] = 0
                result += 1
            }
        }
    }
    
    return result
}
