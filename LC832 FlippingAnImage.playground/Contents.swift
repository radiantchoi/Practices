import UIKit

class Solution {
    func flipAndInvertImage(_ image: [[Int]]) -> [[Int]] {
        var imageSlot = image
        
        for k in 0..<imageSlot.count {
            var i = 0 // 여기에 설정해주지 않으면, 첫줄만 훑고 루프가 끝나는 참사
            var j = imageSlot.count - 1
            while i < j {
                imageSlot[k].swapAt(i, j)
                i += 1
                j -= 1
            }
        }
        
        for n in 0..<imageSlot.count {
            for m in 0..<imageSlot.count {
                if imageSlot[n][m] == 0 {
                    imageSlot[n][m] = 1
                } else {
                    imageSlot[n][m] = 0
                }
            }
        }
        
        return imageSlot
    }
}

// 문제 해결에 관한 아이디어는 금방 떠올렸지만, 코드의 흐름에 있어서 다소 뻘짓한 케이스
// 변수 설정의 위치에 대해 잘 생각해보고 문제를 풀자.
