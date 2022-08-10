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
    func invertTree(_ root: TreeNode?) -> TreeNode? {
       
        // iterative
        guard root != nil else { return nil }
        
        var stack = [TreeNode]()
        
        stack.append(root!)
        
        while (!stack.isEmpty) {
            
            let node = stack.removeLast()
            
            //swap node.left and node.right
            let temp = node.left
            node.left = node.right
            node.right = temp
            
            
            //Add to stack
            if(node.left != nil) {
                stack.append(node.left!)
            }
            if(node.right != nil) {
                stack.append(node.right!)
            }
        }
        
        return root
        
        // Recursive
        /*if (root == nil) {
            return nil
        }
        
        let temp = root?.left
        root?.left = invertTree(root?.right)
        root?.right = invertTree(temp)
        
        return root */
    }
}