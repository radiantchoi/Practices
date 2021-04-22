import UIKit

func solution(_ s:String) -> Bool {
    var result: Bool = true
    
    if s.count == 4 || s.count == 6 {
        if Int(s) == nil { // 자료형 변환이 옵셔널을 출력한다는 데에서 착안
            result = false
        }
    } else {
        result = false
    }
    
    return result
}
