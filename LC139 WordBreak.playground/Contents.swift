// 참고한 풀이 : https://leetcode.com/problems/word-break/discuss/613934/Swift-solution

class Solution {
    func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
        var dp = Array(repeating: false, count: s.count + 1) // 메모이제이션을 위한 참/거짓 배열
        dp[0] = true // 여긴 안쓰는 공간이긴 한데..
        let spread = Array(s) // 일단 주어진 문자열을 글자로 나눠 준다
        
        let dict = Set(wordDict) // 모든 단어는 유니크하다고 했긴 하지만, set을 쓰는 게 훨씬 빠르다.
        
        for i in 1...s.count { // 글자에 번호를 붙여 주는 거기 때문에, 1부터 글자 갯수까지.
            for j in 0..<i { // 그리고 그렇게 선택된 i보다 앞에 있는 j에 대해
                if dp[j] == true {
                    let str = String(spread[j..<i]) // j부터 i 직전까지 있는 글자들을 모아서 단어를 만들고
                    if dict.contains(str) { // 이게 딕셔너리에 있다면?
                        dp[i] = true // 트루로 표시 - 메모이제이션
                        break // 루프를 멈춘다 - 해당 조건 하에 있는 단어들 중 가장 긴 단어가 완성!
                        // 그 말인즉슨, 여기까지는 딕셔너리에 있는 단어로 표현이 된다~ 라는 뜻!
                    }
                }
            }
        }
        
        return dp[s.count] // 그래서 문자열의 모든 단어가 주어진 단어들로 표현이 되는가?
        
    }
}

// 기억하자.. 알고리즘 공부..
