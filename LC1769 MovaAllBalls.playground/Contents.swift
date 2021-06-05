
class Solution {
    func minOperations(_ boxes: String) -> [Int] {
        let boxesArray = boxes.map { String($0) }
        var result = Array(repeating: 0, count: boxesArray.count)
        
        for i in 0..<boxesArray.count {
            for j in 0..<boxesArray.count {
                if boxesArray[j] == "1" {
                    result[i] += abs(i-j)
                }
            }
        }
        
        return result
    }
}

// 모든 공을 한 상자에 옮겨담아야 되니까, 공이 있는 박스만 체크해서, 지금 있는 박스와의 인덱스 차만 구해주면 된다.
// 근데 시간복잡도가 엉망진창으로 나오긴 했다. 거의 3초 걸린 것 같은데
