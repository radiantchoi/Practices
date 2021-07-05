
class Solution {
    func sortColors(_ nums: inout [Int]) {
        
        for i in 0..<nums.count-1 {
            for j in i+1..<nums.count {
                if nums[i] > nums[j] {
                    nums.swapAt(i, j)
                }
            }
        }
        
    }
}

// 너 정렬 알고리즘 알고 있니? 라고 물어보는 문제.
// 대부분의 경우 sort()가 훨씬 시간효율이 좋다는 건 부정할 수 없다.
// 풀이의 경우 선택 정렬을 떠올리면서 썼는데 보면 버블 정렬 같기도 하고 뭔가 짬뽕이 돼 있다.
