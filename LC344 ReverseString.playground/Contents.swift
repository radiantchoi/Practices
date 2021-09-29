
class Solution {
    func reverseString(_ s: inout [Character]) {
        var left = 0
        var right = s.count - 1
        
        while left < right {
            var holder = s[left]
            s[left] = s[right]
            s[right] = holder
            left += 1
            right -= 1
        }
    }
}


