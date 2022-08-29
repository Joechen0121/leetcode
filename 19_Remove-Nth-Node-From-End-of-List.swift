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

        guard head != nil else { return nil }
        
        var dummy = ListNode(0)
        dummy.next = head
        var slow: ListNode? = dummy
        var fast: ListNode? = dummy
        
        // fast pointer forward to node which is previous from deletion node
        for _ in 0..<n {
            fast = fast?.next   
        }
        
        fast = fast?.next
        
        // fast pointer to nil
        // slow pointer forward to node which is previous from deletion node
        while fast != nil {
            fast = fast?.next
            slow = slow?.next
        }
        slow?.next = slow?.next?.next
        
        return dummy.next
    }
}
