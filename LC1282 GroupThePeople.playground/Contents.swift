
class Solution {
    func groupThePeople(_ groupSizes: [Int]) -> [[Int]] {
        
        var storage: [[Int]] = Array(repeating: [], count: groupSizes.count + 1)
        var result: [[Int]] = []
        
        for i in 0..<groupSizes.count {
            storage[groupSizes[i]].append(i)
        }
        
        for j in 0..<storage.count {
            if !storage[j].isEmpty {
                var carrier: [Int] = []
                while carrier.count < j && !storage[j].isEmpty {
                    carrier.append(storage[j].removeLast())
                    if carrier.count == j {
                        result.append(carrier)
                        carrier.removeAll()
                    }
                }
            }
        }
            
        return result
    }
}

// carrier 부분에서 !storage[j].isEmpty 조건을 걸어 주지 않으면, 빈 배열을 계속 닥닥 긁으면서 carrier에 추가하려고 한다..
