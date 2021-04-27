import UIKit


class ParkingSystem {
    
    var spaces: Dictionary<String, Int>

    init(_ big: Int, _ medium: Int, _ small: Int) {
        spaces = ["Big" : 0, "Medium": 0, "Small": 0]
        spaces["Big"]! += big
        spaces["Medium"]! += medium
        spaces["Small"]! += small
    }
    
    func addCar(_ carType: Int) -> Bool {
        var result = false
        if carType == 1 {
            if spaces["Big"] != 0 {
                result = true
                spaces["Big"]! -= 1
            }
        } else if carType == 2 {
            if spaces["Medium"] != 0 {
                result = true
                spaces["Medium"]! -= 1
            }
        } else if carType == 3 {
            if spaces["Small"] != 0 {
                result = true
                spaces["Small"]! -= 1
            }
        }
        
        return result
    }
}

// Dictionary를 활용했지만, Array를 썼어도 문제를 푸는 것 자체에는 큰 지장이 없었을 듯 하다.
// addCar에서 switch case를 사용해볼 수도 있겠다고 생각했지만, 아쉽게도 해당 문법에 아직 익숙하지 않아 사용해보지 못하였다.
// 또 시간이 오래 걸렸다. 개선할 부분을 찾을 수 있을지 생각해보자.
// 입력되는 자료의 형태는 다음과 같다
// ["ParkingSystem", "addCar", "addCar", "addCar", "addCar"] = [[1, 1, 0], [1], [2], [3], [1]]
// ParkingSystem parkingSystem = new ParkingSystem(1, 1, 0)
