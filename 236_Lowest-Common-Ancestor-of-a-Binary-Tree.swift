/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        
        // Base check
        if root == nil || p == nil || q == nil {
            return nil
        }
        
        // root is p or q, return root
        if root === p || root === q {
            return root
        }
        
        // Check left and right side
        let left = lowestCommonAncestor(root?.left, p, q)
        let right = lowestCommonAncestor(root?.right, p, q)
        
        // Never come up with no match 
        if left == nil && right == nil {
            return nil
        }
        
        // left and right have value, return root
        if left != nil && right != nil {
            return root
        }
        
        // p, q in the same side (left or right)
        return left != nil ? left : right
        
    }
}
