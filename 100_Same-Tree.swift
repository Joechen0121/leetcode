/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        
        guard (p != nil && q != nil) || (p == nil && q == nil) else { return false }
        
        var queueLeft = [p]
        var queueRight = [q]
        
        while !queueLeft.isEmpty && !queueRight.isEmpty {
            let leftNode = queueLeft.removeFirst()
            let rightNode = queueRight.removeFirst()
            
            if leftNode == nil && rightNode == nil { continue }
            guard let left = leftNode, let right = rightNode else { return false }
            guard left.val == right.val else { return false }
            
            queueLeft += [left.left, left.right]
            queueRight += [right.left, right.right]
        }
        
        return queueLeft.isEmpty && queueRight.isEmpty
    
    }
}
