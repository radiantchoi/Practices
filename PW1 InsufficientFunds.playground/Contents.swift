// 프로그래머스 위클리 챌린지 1주차 부족한 금액 계산하기

import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var answer:Int64 = -1
    
    var ride = 0
    var mult = 0
    
    while ride < count {
        ride += 1
        mult += ride
    }
    
    if (price * mult) > money {
        answer = Int64((price * mult) - money)
    } else {
        answer = Int64(0)
    }
    
    return answer
}

// Int64 개빡침
