// 참고한 풀이 : https://leetcode.com/problems/find-k-pairs-with-smallest-sums/discuss/447569/Swift-Answer
// 참고한 코드 : https://ppomelo.tistory.com/10
// 참고한 코드 : https://beenii.tistory.com/143


class Solution {
    func kSmallestPairs(_ nums1: [Int], _ nums2: [Int], _ k: Int) -> [[Int]] {
        var answer = [[Int]]()
        var pairs = [(left: Int, right: Int, sum: Int)]()
        
        for i in 0..<nums1.count {
            for j in 0..<nums2.count {
                var pair = (nums1[i], nums2[j], nums1[i]+nums2[j])
                pairs.append(pair)
            }
        }
        
        var sortedPairs = pairs.sorted(by: { $0.2 < $1.2 })
        
        var count = 0
        for sortedPair in sortedPairs where count < k {
            answer.append([sortedPair.0, sortedPair.1])
            count += 1
        }
        
        return answer
    }
}

// 원래는 reduce를 이용해서 sort할 때 합을 구했으나, 그러면 시간초과가 났다.
// 애시당초 처음 O(n^2) 부분에서 합을 구해서 튜플에 박아 두고, sorted(by:)를 이용해 유사 우선순위 큐를 구해서 하는 게 빠르게 먹혔다.
// where도 또한 알아 두자. sorted(by:)는 물론이고.
