import UIKit

// https://leetcode.com/problems/sum-of-all-subset-xor-totals/discuss/1212870/Swift-solution 풀이 참조함

class Solution {
    func subsetXORSum(_ nums: [Int]) -> Int {
        var result = 0
        let length = nums.count
        
        func calculate(_ xor: Int, _ start: Int) { // xor을 구해주는 함수. xor은 정수, start는 인덱스의 역할을 하게 된다
            guard start < length else { return } // 배열의 길이를 초과하면 안되므로
            let nextXor = xor ^ nums[start] // 0과 nums 인덱스와의 xor을 '주선'하게 된다
            result += nextXor // 결과값을 result에 더해 주고
            calculate(xor, start + 1) // 재귀. 다음 인덱스와 xor을 주선한다.
            calculate(nextXor, start + 1) // 재귀. 지금 저장되어 있는 nextXor값과 다음 인덱스와의 xor을 주선한다.
        }
        
        calculate(0, 0) // 원소가 0인 집합의 xor 결과는 0이므로 0을 넣고, 배열의 첫 번쨰 원소부터 xor해야 되니까 0을 넣는다
        return result
    }
}

// 0과 배열의 모든 원소와 한번씩 xor을 해 주고, 해당 값들을 바탕으로 다른 원소와 xor 해주고, 반복하면 모든 경우의 수의 xor이 구해지겠구나..
// xor의 성질에 대해 잘 알고 있어야 하고, 거기다가 재귀를 알맞게 쓰면 풀 수 있는 문제였다.
// nextXor과 start + 1을 재귀로 불러오니까, 원소가 중복될 우려도 없다.
