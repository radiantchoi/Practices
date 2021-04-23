import UIKit

import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    var result: [Int] = [] // brown과 yellow는 사실상 해당 색깔이 차지하는 넓이를 나타내는 변수
    var hor = 0
    var ver = 0
    
    for n in 1...yellow { // 노랑색 영역만의 세로 길이
        if yellow % n != 0 { // 넓이는 세로 길이로 나누어 떨어지는게 당연하므로
            continue // 여기서 break를 썼던 실수가 있었다. 이 경우 if문을 탈출하므로 모든 가짓수에 대해 탐색할 수 없다.
        } else {
            hor = (yellow / n) + 2 // 갈색이 노랑색을 둘러싸고 있으므로, 전체 카펫의 가로와 세로 길이는 +2
            ver = n + 2
        }
        
        if hor * ver == brown + yellow && hor >= ver { //가로가 더 긴 조건
            result.append(hor)
            result.append(ver)
        }
    }
    return result
}
