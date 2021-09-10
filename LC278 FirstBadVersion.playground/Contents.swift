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
        
        var i = 1, j = n
        while i <= j {
            let h = i + (j-i)/2
            isBadVersion(h) ? (j = h-1) : (i = h + 1)
        }
        
        return i
    
    }
}

// 포인터를 두 개 둔다는 생각을 미처 하지 못했다..
// ? : 문법도 또한 알아둘 만 한 것 같다.
