import Darwin

// 참고한 풀이 : https://leetcode.com/problems/maximum-xor-for-each-query/discuss/1163736/Swift-Beats-100-O(n)-solution

class Solution {
    func getMaximumXor(_ nums: [Int], _ maximumBit: Int) -> [Int] {
        let max = Int(pow(2, Float(maximumBit)) - 1) // 사실상 이 제곱수 구하는 데에서 시간을 많이 까먹었는데, cannot find in scope라니? Darwin을 Import해야 쓸 수 있다니????
        var output: [Int] = []
        output.reserveCapacity(nums.count) // 배열의 용량을 미리 할당하여, 배열의 길이가 늘어났을 때 재연산을 할 필요 없게 만드는 메서드. 이게 시간복잡도를 확 낮춰줬구나
        var res = xor(nums) // 작성해둔 xor 함수를 통해 배열 전체의 값을 xor한 값을 내보낸다
        
        for i in 0 ..< nums.count {
            output.append(res ^ max) // 2의 maximumBit승 - 1을 xor해준 것이다.
            res ^= nums[nums.count - i - 1] // nums 배열의 맨 끝 원소에서 i만큼 뺀 원소를 xor했다. 그러니까 removeLast를 하지 않고, 자연히 그 다음 뒤 원소를 xor해준 것이다.
        } // 그러니까, 이 루프는 nums의 모든 원소에 대해 max값을 xor시켜준 것이다.
        // 아! (a^k)^k = a라는 것을 알고 있으면, 위의 반복문의 res를 조정하는 과정을 이해할 수 있다.
        
        return output
    }
    
    func xor(_ nums: [Int]) -> Int {
        var res = nums[0]
        for n in 1 ..< nums.count {
            res ^= nums[n]
        }
        
        return res
    }
}

// 제시된 힌트들
// Note that the maximum possible XOR result is always 2^(maximumBit) - 1 (아!!!)
// So the answer for a prefix is the XOR of that prefix XORed with 2^(maximumBit)-1 (여기서 prefix라 함은 n번 진행돼서 뒷부분의 n개 원소가 없어진 배열을 말하겠지)

// nums의 각 원소들은 2의 maximumBit승보다 항상 작다고 문제의 조건에 주어져 있었다. 문제를 꼼꼼히 읽는 습관 또한 필요할 것 같다..
// xor에 대한 배경지식, reserveCapacity, darwin pow 등을 건져갈 만 한 문제였다. xor에 대한 개념을 더 올바르게 잡아야 할 듯
// 배우는 것은 알차게 배웠지만, 너무 시간도 오래 걸렸고 고통스러웠다..
// 참고 : https://ko.wikipedia.org/wiki/배타적_논리합 & https://ko.wikipedia.org/wiki/XOR_교체_알고리즘

// 내 원래 코드 (시간 제한 초과)

class SolutionOfMine {
    func getMaximumXor(_ nums: [Int], _ maximumBit: Int) -> [Int] {
        var numsArray = nums
        var answer: [Int] = []
        var maximum = 1
        var count = 0
        while count < maximumBit {
            maximum *= 2
            count += 1
        }
        
        while numsArray.count > 0 {
            answer.append(maximumXor(numsArray, maximum))
            numsArray.removeLast()
        }
        
        return answer
    }
    
    func maximumXor(_ a: [Int], _ n: Int) -> Int {
        var xor = a[0]
        
        for i in 1..<a.count {
            xor = xor^a[i]
        }
        
        var xorsWithN: [Int] = []
        for j in 0..<n {
            xorsWithN.append(xor^j)
        }
        
        var result = 0
        for k in 0..<xorsWithN.count {
            if xorsWithN[k] == xorsWithN.max() {
                result = k
            }
        }
        
        return result
    }
}
