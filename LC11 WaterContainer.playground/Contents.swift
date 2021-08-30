// 참고한 풀이 : https://leetcode.com/problems/container-with-most-water/discuss/312280/Swift

class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var i = 0
        var j = height.count-1
        var container = 0
        
        while i < j {
            let width = j-i
            let water = width * min(height[j], height[i])
            
            container = max(container, water)
            if height[i] < height[j] {
                i += 1
            } else {
                j -= 1
            }
        }
        
        return container
    }
}

// i와 j 두 포인터를 두고 해야 한다는 점은 힌트 1을 보고 깨닫긴 했다.
// 다만, 어떤 식으로 i와 j를 컨트롤해야 하는지를 깨닫지 못했다.
// 높이는 곧 가둘 수 있는 물의 양과 직결되는 것이므로, 높이가 낮은 쪽의 인덱스를 변경해주면 되는 거였다.
// O(n^2)의 알고리즘은 대부분의 상황에서 통과를 하지 못한다.. 더 훈련이 필요하다.
