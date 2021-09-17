

 // Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }


class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var first = head!
        var count = 0
        
        while true {
            if first.next == nil {
                break
            } else {
                first = first.next!
                count += 1
            }
        }
        
        if count % 2 == 0 {
            count /= 2
        } else {
            count = (count+1)/2
        }
        
        var result = head!
        while count > 0 {
            result = result.next!
            count -= 1
        }
        
        return result
    }
}


