import UIKit

import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int { // https://kyungminleedev.github.io/notes/Programmers-Level2-15-BirdgeTrucks/ 참조
    var time = 0
    var waiting = truck_weights // 기다리고 있는 트럭의 목록
    var crossing = Array(repeating: 0, count: bridge_length) // 건너고 있는 트럭의 목록. 0000... 의 형태로 된 배열로, 큐로 사용할 것.
    var crossingWeight = 0 // 건너고 있는 트럭의 무게
    
    while !crossing.isEmpty { // 일단 큐가 비어 있지 않은 동안
        crossingWeight -= crossing.removeFirst() // 큐의 0번 인덱스 값을 계속 제거해 주면서, 해당 값을 건너고 있는 트럭의 무게에 더해 준다
        time += 1 // 시간의 흐름
         
        if let truck = waiting.first { // 더이상 기다리는 트럭이 없을 수도 있으니까, 옵셔널 바인딩을 해야 오류가 안 난다.
            if crossingWeight + truck <= weight { // 트럭의 무게 체크
                crossingWeight += waiting.removeFirst() // 새로 트럭이 들어왔다면, 그 무게를 건너고 있음에 더해줘야 한다.
                crossing.append(truck) // 그리고 이제 트럭이 다리에 올라섰다.
            } else {
                crossing.append(0) // 무게가 초과하면 트럭을 더해줄 수 없으니까, 다리 길이 유지 및 트럭을 앞으로 '움직이게' 하는 0 삽입
            }
        }
    }

    
    return time
}

// 일종의 큐를 활용한 문제, 동시에, 굳이 해당 자료구조를 완벽히 구현하지 않아도 됨을 알려줬다.
// 알아둬야 할 것 : 큐의 아이디어, .first
