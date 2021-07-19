
class Solution {
    func numPairsDivisibleBy60(_ time: [Int]) -> Int {
        var answer = 0
        var duration60 = [Int]()
        var otherDuration = [Int]()
        
        for duration in time {
            if duration % 60 == 0 {
                duration60.append(duration)
            } else {
                otherDuration.append(duration)
            }
        }
        
        answer += (duration60.count) * (duration60.count-1) / 2
        
        var restOfTime: [[Int]] = Array(repeating:[], count: 60)
        
        for duration in otherDuration {
            var rest = duration % 60
            restOfTime[rest].append(duration)
        }
        
        var i = 1
        var j = 59
        
        while i < j {
            answer += restOfTime[i].count * restOfTime[j].count
            i += 1
            j -= 1
        }
        
        answer += (restOfTime[30].count) * (restOfTime[30].count-1) / 2
        
        return answer
    }
}

// 힌트 중, 길이가 60인 배열에 곡을 몰아놓으면 되지! 라는 게 도움이 됐다.
// 조합을 구하는 원리를 직접 식으로 적용했다..
