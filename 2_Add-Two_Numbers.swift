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
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        var l1 = l1
        var l2 = l2
        
        var result: ListNode? = ListNode(0)
        let head = result
        
        var reduntant: Int = 0
        
        while (l1 != nil || l2 != nil || reduntant > 0 ){
            let l1Val: Int = l1?.val ?? 0
            let l2Val: Int = l2?.val ?? 0
            let sum = l1Val + l2Val + reduntant
            
            let value = sum % 10
            reduntant = sum/10
            
            result?.next = ListNode(value)
            result = result?.next
            
            l1 = l1?.next
            l2 = l2?.next
        }

        return head?.next    
    }
}