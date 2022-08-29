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
        
        guard root != nil, p != nil, q != nil else { return nil }
    
        var stack = [TreeNode]()
        
        stack.append(root!)
        
        while !stack.isEmpty {
            let node = stack.removeLast()
            
            // right side
            if p!.val > node.val && q!.val > node.val {
                if let nodeRight = node.right {
                    stack.append(nodeRight)
                }
            }
            // left side
            else if p!.val < node.val && q!.val < node.val {
                if let nodeLeft = node.left {
                    stack.append(nodeLeft)
                }
            }
            else {
                return node
            }
        }
        
        return nil
    }
}
