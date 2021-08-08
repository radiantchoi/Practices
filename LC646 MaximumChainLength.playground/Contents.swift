
class Solution {
    func findLongestChain(_ pairs: [[Int]]) -> Int {
        var length = Array(repeating: 1, count: pairs.count)
        
        let pairsSorted = pairs.sorted { $0[0] < $1[0] }
        
        for i in 0..<pairs.count {
            for j in 0..<i {
                if pairsSorted[j][1] < pairsSorted[i][0] && length[i] < length[j] + 1 {
                    length[i] = length[j] + 1
                }
            }
        }
        
        return length.max()!
    }
}

// 어제 봤던 풀이를 여기도 적용시켜 봤는데.. 오우.. 신묘하다
// 다만 var과 let을 잘 구분해 사용하자. 이게 의외로 시간복잡도에 영향을 주더라
