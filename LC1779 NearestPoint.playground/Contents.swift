class Solution {
    func nearestValidPoint(_ x: Int, _ y: Int, _ points: [[Int]]) -> Int {
        var result = -1
        var dist = Int.max
        
        for (index, point) in points.enumerated() {
            if point[0] == x || point[1] == y {
                let currDist = abs(x - point[0]) + abs(y - point[1])
                if currDist < dist {
                    dist = currDist
                    result = index
                }
            } else {
                continue
            }
        }
        
        return result
    }
}
