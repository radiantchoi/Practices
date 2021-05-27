import UIKit

class Solution {
    func countGoodTriplets(_ arr: [Int], _ a: Int, _ b: Int, _ c: Int) -> Int {
        
        var result: [[Int]] = []
        
        for i in 0..<arr.count {
            for j in 0..<arr.count {
                for k in 0..<arr.count {
                    if i < j && j < k && abs(arr[i]-arr[j]) <= a && abs(arr[j]-arr[k]) <= b && abs(arr[i]-arr[k]) <= c {
                        result.append([arr[i], arr[j], arr[k]])
                    }
                }
            }
        }
        
        return result.count
        
    }
}

// 문제에서 주어진 대로 조건을 잘 설정할 수 있느냐에 관한 문제였던 것 같다.
// 시간복잡도, 공간복잡도가 전부 안좋게 찍혔다.
