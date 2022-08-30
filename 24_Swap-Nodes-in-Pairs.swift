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
    func swapPairs(_ head: ListNode?) -> ListNode? {
        
        guard head != nil else { return nil }
        
        var dummy = ListNode(0)
        dummy.next = head
        var current: ListNode? = dummy
        
        while current?.next != nil && current?.next?.next != nil {

            let temp1 = current?.next
            let temp2 = current?.next?.next?.next
            
            // dummy -> 2
            current?.next = current?.next?.next
            
            // 2 -> 1
            current?.next?.next = temp1
            
            // 1 -> 3
            current?.next?.next?.next = temp2
            
            current = current?.next?.next
        }
    
        return dummy.next
    }
}
