
class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var product = 1
        var zeroCount = 0
        var answer = [Int]()
        
        for n in nums {
            if n != 0 {
                product *= n
            } else {
                zeroCount += 1
            }
        }
        
        if zeroCount == 0 {
            for i in 0..<nums.count {
                answer.append(product/nums[i])
            }
        } else if zeroCount == 1 {
            for i in 0..<nums.count {
                if nums[i] != 0 {
                    answer.append(0)
                } else {
                    answer.append(product)
                }
            }
        } else {
            for _ in 0..<nums.count {
                answer.append(0)
            }
        }
        
        return answer
        
    }
}

// O(n) 안으로 만들라는 제한조건이 걸려 있어서, 다소 고민이 필요했다.
// 마지막 for문에서 i가 아닌 _를 사용하니까 시간이 훨씬 덜 걸렸다. 무슨 원리지?

