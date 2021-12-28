class Solution {
    func largestAltitude(_ gain: [Int]) -> Int {
        var altitude = [0]
        for i in 0..<gain.count {
            altitude.append(altitude[i] + gain[i])
        }
        
        return altitude.max()!
    }
}

// 너무 머리가 안 돌아서, 쉬운 문제부터 하나 풀어 봤다.
