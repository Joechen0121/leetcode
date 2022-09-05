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
    func isPalindrome(_ head: ListNode?) -> Bool {
        
        // Brute Force
        
        guard head != nil else { return false }
        
        var arr = [Int]()
        var current = head
        
        // Stored in arr
        while current != nil {
            arr.append(current!.val)
            current = current?.next
        }
        
        // Check Palindrome
        for i in 0..<(arr.count)/2 {
            if arr[i] != arr[arr.count - 1 - i] {
                return false
            }
        }
        
        return true
        
    }
}
