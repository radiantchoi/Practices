// 참고한 풀이 : https://leetcode.com/problems/first-bad-version/discuss/606346/Swift-20ms-95.63

class VersionControl {
    let bad = Int()
/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */
    func isBadVersion(_ n: Int) -> Bool {
        if n >= bad {
            return true
        } else {
            return false
        }
    }
}
    
class Solution: VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        
        var i = 1, j = n // 1부터 n까지 훑어야 할 경우를 대비
        while i <= j {
            let h = i + (j-i)/2 // 이진 탐색을 위해 포인터를 지정. 초기값은 j/2 곧 n/2
            isBadVersion(h) ? (j = h-1) : (i = h + 1)
            // 지정한 중간값 h를 통해, 이거가 트루면 이 뒤의 것은 생각할 필요가 없다.
            // 반대로 이것이 펄스면 이 앞의 것은 생각할 필요가 없다.
            // 이렇게 해서 i가 j보다 커지면, 자동으로 브레이크가 걸릴 것.
        }
        
        return i
    
    }
}

// 포인터를 두 개 둔다는 생각을 미처 하지 못했다..
// ? : 문법도 또한 알아둘 만 한 것 같다.

class Solution: VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        
        var i = 1
        var j = n
        
        while i <= j {
            let k = i + (j-i)/2
            
            if isBadVersion(k) { j = k - 1 } else { i = k + 1 }
        }
        
        return i
    }
}

// 좀 더 알기 쉽게 코드를 재해석해봤다.
