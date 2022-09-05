/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        
        // Two pointer
        if headA == nil || headB == nil { return nil }
        
        var listA = headA
        var listB = headB
        
        while listA !== listB {
            listA = listA == nil ? headB : listA?.next
            listB = listB == nil ? headA : listB?.next
        }
        
        return listA
        
        // Brute force
        /*var nodeA = headA
        var nodeB = headB
        var lenA = 0
        var lenB = 0 
        var gap = 0
        
        // compute len A
        while nodeA != nil {
            lenA += 1
            nodeA = nodeA?.next
        }
        
        // compute len B
        while nodeB != nil {
            lenB += 1
            nodeB = nodeB?.next
        }
        
        // compute gap
        if lenA > lenB {
            gap = lenA - lenB
            nodeA = headA
            nodeB = headB 
        }
        else {
            gap = lenB - lenA
            nodeA = headB
            nodeB = headA  
        }
        
        // align
        while gap > 0 {
            nodeA = nodeA?.next
            gap -= 1
        }
        
        // compare A and B
        while nodeA != nil {
            if nodeA === nodeB {
                return nodeA
            }
            nodeA = nodeA?.next
            nodeB = nodeB?.next
        }
        
        return nil*/
    }
}
