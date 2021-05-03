import UIKit

class Solution {
    func countMatches(_ items: [[String]], _ ruleKey: String, _ ruleValue: String) -> Int {
        var result = 0
        
        for n in 0..<items.count {
            if ruleKey == "type" {
                if items[n][0] == ruleValue {
                    result += 1
                }
            } else if ruleKey == "color" {
                if items[n][1] == ruleValue {
                    result += 1
                }
            } else if ruleKey == "name" { // 이 부분을 그냥 else로 바꿔도 시간은 비슷하게 걸린다. 그렇다면 오류 방지를 위해 명시해주는 편이 낫겠다.
                if items[n][2] == ruleValue {
                    result += 1
                }
            }
        }
        
        return result
    }
}

// 기본적인 2차원 리스트 접근법에 관한 문제라고 생각한다.
// 다만 시간복잡도 순위가 조금 떨어지는데, 누군가는 이걸 굉장한 효율로 풀었다는 말..

