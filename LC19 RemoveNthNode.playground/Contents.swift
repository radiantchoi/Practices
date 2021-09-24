// 참고한 풀이 : https://leetcode.com/problems/remove-nth-node-from-end-of-list/discuss/211418/Swift

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */

class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        let head = head // 마지막에 리턴할 때는 헤드부터 가리키고 있는 링크드 리스트가 필요하다
        var slow: ListNode? = head // 뒤에서 따라갈 노드
        var fast: ListNode? = head // 앞에서 이끌 노드
        
        var count = 0
        while count < n {
            fast = fast?.next
            count += 1
        }
        // 일단 패스트 노드를 먼저 n만큼 이동시켜 둔다
        
        var prev: ListNode? = nil // 링크를 끊을 지점의 노드
        while fast != nil {
            fast = fast?.next
            prev = slow
            slow = slow?.next
        }
        // 프리브는 슬로우를 따라가게, 나머지는 하나씩 앞으로 옮겨 준다
        
        if slow === head { return slow?.next } // 슬로우 노드가 첫 노드라면, 뒤의 연결을 끊어버리면 그냥 된다.
        
        prev?.next = slow?.next // 프리브의 넥스트 값을 조절해 주고
        slow?.next = nil // 슬로우를 없앤다
        return head // 헤드부터 리스트를 보고 답으로 낸다
    }
}

// 코딩 테스트 사이트의 링크드 리스트 문제는 기존의 메서드를 거의 쓸 수 없지만, 제한조건이 힌트가 될 수도 있겠다는 생각을 했다.
// ==도 그 중 하나인데, ===를 대신 사용할 수 있다는 것을 유념하자.

