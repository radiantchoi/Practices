import UIKit

// https://nadarm.tistory.com/41 풀이 참조함

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.isEmpty { return "" } // 입력 배열이 비었을 경우엔 당연히 Common Prefix가 없으므로 "" 출력. 이거 지정 안해주면 오류 난다.
        var minLen = Int.max // 정수 타입의 최댓값을 구할 때. 이 값은 이후에 바뀔 예정. 길이에 관한 변수라, 안정성을 위해 최댓값으로 설정해 준 듯 하다.
        var result: [[Character]] = [] // 마찬가지로 아래 함수에서 쓰일 것
        for str in strs { // strs의 각 문장에 대해
            let str = Array(str) // 문장을 글자로 뿌려주는 방법이 이렇게 쉬운 게 있는줄 몰랐다. 아무튼 각 문장을 배열에 뿌려 준다
            minLen = min(minLen, str.count) // minlen의 값이 여기서 바뀌게 된다.
            if !result.isEmpty { // result가 비어 있지 않다면
                for i in 0..<minLen { // 자동으로, 각 문장과 이전 문장들의 길이를 비교해 작은 쪽으로 range가 설정이 된다
                    if !result.isEmpty && result.first![i] != str[i] { // 만약 이미 들어가있는 result값이 있을시, 현재 문장과 들어가있는 result 문장 모두와 글자를 하나씩 비교해서, 다 같다면?
                        minLen = i // 길이는 i가 되고
                        break // 루프를 멈춘다. 즉 prefix가 되는 구간까지만 루프를 돌리는 것.
                    }
                }
            }
            
            if minLen == 0 { return "" } // 0일 경우엔 당연히 ""를 반환하게끔 설정하고
            result.append(str) // 지금 돌렸던 str 문장을 result에 넣는다.
        }
        
        return String(result[0][0..<minLen]) // prefix는 첫 문장에도 동일하게 들어가 있으니까, 처음부터 최소 길이까지의 글자를 합쳐서 문자열로 내보내면 된다.
    }
}

// 시간이 없어서 코드 독해 정도만 수행했지만, 나중에 좀 더 들여다봐야 할 것 같다.
// 역시 스위프트의 문자열 인덱싱은 불편하다.
