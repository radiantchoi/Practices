
class Solution {
    func processQueries(_ queries: [Int], _ m: Int) -> [Int] {
        var permutation = Array(1...m)
        var result: [Int] = []
        
        for i in 0..<queries.count {
            for j in 0..<permutation.count {
                if queries[i] == permutation[j] {
                    result.append(j)
                    let carrier = permutation[j]
                    permutation.remove(at: j)
                    permutation.insert(carrier, at: 0)
                }
            }
        }
        
        return result
    }
}

// remove와 insert의 올바른 사용을 검색하지 않고 해냈다는 것이 고무적이다.
