
class Solution {
    func maxCoins(_ piles: [Int]) -> Int {
        var p = piles.sorted()
        var answer = 0
        var holder: [Int] = []
        
        while p.count > 0 {
            holder.append(p.removeLast())
            holder.append(p.removeLast())
            holder.append(p.removeFirst())
            answer += holder[1]
            holder.removeAll()
        }
        
        return answer
    }
}

// Bob한테 세 번째로 큰 동전 무리를 주는 게 아니라, 가장 작은 걸 짬때리는 문제
