// 참고한 풀이 : https://leetcode.com/problems/partition-labels/discuss/1123617/Swift%3A-Partition-Labels

class Solution {
    func partitionLabels(_ s: String) -> [Int] {
        guard !s.isEmpty else { return [] } // 문자열 길이가 0일 경우는 그냥 끝내게끔
        
        var indexMap = [Character: Int]() // 값을 저장할 딕셔너리 생성 - 역시 내가 했던 추측은 맞았군
        
        for (index, letter) in s.enumerated() { // enumerated() 함수는 인덱스와 항목을 튜플로 반환해 준다
            indexMap[letter, default: 0] = index // 이렇게 돌리면, 딕셔너리의 해당 값이 해당 글자의 최댓값이 된다
        }
        
        var num = 0 // 현재 '덩어리' 가 시작하는 인덱스
        var end = 0 // 현재 '덩어리' 가 끝나는 인덱스
        var result = [Int]()
        
        for (index, letter) in s.enumerated() {
            end = max(end, indexMap[letter, default: 0]) // 해당 글자의 최대 인덱스를 end에 넣어 준다
            
            guard index == end else { continue } // end에 도달하지 못한 글자들은 그냥 넘긴다 (루프의 처음으로 돌아감)
            result.append(index - num + 1) // 길이를 구하는 것이므로, 1을 더해 줘야 한다.
            num = index + 1 // 다음 덩어리의 첫 번째 인덱스를 지정해 준다
        }
        
        return result
        
    }
}
