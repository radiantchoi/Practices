// 참고한 풀이 : https://leetcode.com/problems/longest-substring-without-repeating-characters/discuss/320771/Swift

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        
        if s.count == 0 || s.count == 1 { // 문장의 길이가 0이나 1일 때에는 더 뭘 할 필요가 없다
            return s.count
        }
        
        var result = 0 // 결과로 내놓을 가장 긴 substring의 길이
        let spread = s.map { String($0) } // 역시 배열로 쪼개서 푸는 것이 편하다
        var holder = [String]() // 알파벳을 저장할 임시 공간
        holder.append(spread[0]) // 일단 첫 글자는 더해 준다
        
        for i in 1..<spread.count {
            if let index = holder.firstIndex(of: spread[i]) {
                // 임의의 인덱스 변수를 만들고, 더하고자 하는 글자와 같은 글자를 가진 첫 번째 인덱스를 내놓는다
                holder.removeFirst(index + 1)
                // 그 인덱스가 있는 부분까지는 못 쓰니까, 인덱스 0을 포함해 index+1개의 원소를 앞에서부터 지운다
            }
            holder.append(spread[i]) // 어쨌든 i에 있는 글자를 더한다
            result = max(result, holder.count) // result값을 계속 갱신해 준다
        }
        
        return result
    }
}

// if let으로 옵셔널 바인딩하는 것이 핵심인 줄 알았지만, 사실 firstIndex와 removeFirst가 핵심이었다.
// firstIndex(of: ) = of 뒤에 오는 조건을 만족하는 첫 번째 원소의 인덱스를 돌려준다
// removeFirst(_:) = 앞에서부터 넣어준 숫자 갯수만큼의 원소를 지운다
// 해당 문법에 대해 숙지하도록 하자.
