// 참고한 풀이 : https://leetcode.com/problems/search-insert-position/discuss/165335/Swift-Implementation

class Solution {
     func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        return searching(nums, target, 0, nums.count - 1) // 재귀함수를 굴려서 얻어낸 결과 도출
    }
    
    func searching(_ nums: [Int], _ target: Int, _ left: Int, _ right: Int) -> Int {
        if left > right {
            return right + 1
        }
        
        let mid = (left + right) / 2 // 중간 인덱스
        if nums[mid] == target {
            return mid // 이미 괜찮은 지점을 찍었다면, 바로 리턴. 같은 수가 여러 개 나오진 않는구나..
        } else if nums[mid] > target {
            return searching(nums, target, left, mid - 1) // 타겟이 더 작다면, 오른쪽 인덱스를 미드-1로 바꿔도 된다. 미드가 확실히 더 크니까.
        }
        return searching(nums, target, mid + 1, right) // 타겟이 더 크다면, 왼쪽 인덱스를 미드+1로 바꿔도 된다. 미드보단 확실히 더 크니까.
    }
    // 요컨대 왼쪽 오른쪽 인덱스를 절반씩 움직여가며 맞는 지점을 찾는 것이다...
    // 재귀를 통해 알맞은 mid 인덱스가 나올 때까지 굴리는 것이다.
}

// 이진 탐색을 잘 하려면, 재귀에 대해 잘 알아야 할 것 같다.
// 또한, 인덱스 변수를 두 개 굴리는 법에 대해서도 알아야겠다.

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        if target > nums[nums.count-1] {
            return nums.count
        } else if target < nums[0] {
            return 0
        }
        
        var left = 0
        var right = nums.count - 1
        
        while left <= right {
            let center = left + (right-left)/2
            
            if nums[center] > target {
                right = center - 1
            } else if nums[center] < target {
                left = center + 1
            } else {
                return center
            }
        }
        
        return left
    }
}

// 앞 문제에서 복습한 것을 토대로 조금 더 시간 효율이 좋은 코드를 짰다.
