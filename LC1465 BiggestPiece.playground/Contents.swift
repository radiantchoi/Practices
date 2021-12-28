class Solution {
    func maxArea(_ h: Int, _ w: Int, _ horizontalCuts: [Int], _ verticalCuts: [Int]) -> Int {
        var maxHeight = 0
        var maxWidth = 0
        var hCuts = [0]
        var vCuts = [0]
        hCuts.append(contentsOf: horizontalCuts); hCuts.append(h); hCuts.sort()
        vCuts.append(contentsOf: verticalCuts); vCuts.append(w); vCuts.sort()
        
        for i in 1..<hCuts.count {
            maxHeight = max(maxHeight, hCuts[i] - hCuts[i-1])
        }
        
        for j in 1..<vCuts.count {
            maxWidth = max(maxWidth, vCuts[j] - vCuts[j-1])
        }
        
        return (maxHeight * maxWidth) % Int(pow(10.0, 9) + 7)
    }
}

// 못 푼 문제 기록에서의 힌트를 보고 바로 풀어냈다구~
// 근데 pow는 도대체 어떻게 돼먹은 함수지
