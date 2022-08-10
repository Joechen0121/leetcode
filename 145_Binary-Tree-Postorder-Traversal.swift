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
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        
        var stack = [TreeNode]()
        var result = [Int]()
        var current: TreeNode?
        
        guard root != nil else { return [] }
            
        stack.append(root!)
        
        while(!stack.isEmpty) {
        
            current = stack.last!
            
            if (current?.left == nil) && (current?.right == nil) {
                result.append(stack.removeLast().val)
            }
            
            // stored right node to stack
            if let rightNode = current!.right {
                stack.append(rightNode)
                current?.right = nil
            }
            
            if let leftNode = current!.left {
                stack.append(leftNode)
                current?.left = nil
            }
        }
        
        return result
    }
}