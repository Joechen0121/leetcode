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
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        
        var l1 = list1
        var l2 = list2
        
        var dummy: ListNode? = ListNode(-1)
        var current = dummy
        
        if l1 == nil && l2 == nil {
            return nil    
        }
        
        while(l1 != nil && l2 != nil) {
            if ((l1!.val) <  (l2!.val)) {
                current?.next = l1
                l1 = l1?.next
            }
            else {
                current?.next = l2
                l2 = l2?.next
            }
            
            current = current?.next
        }
        
        if l1 != nil {
            current?.next = l1
        }
        
        if l2 != nil {
            current?.next = l2
        }
        
        return dummy?.next
    }
}