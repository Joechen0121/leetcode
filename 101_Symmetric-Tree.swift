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
    func isSymmetric(_ root: TreeNode?) -> Bool {
        
        
        // Queue method
        guard root != nil else { return false }
        
        var queue = [root?.left, root?.right]
        
        while !queue.isEmpty {
            
            let left = queue.removeFirst()
            let right = queue.removeFirst()
            
            if left == nil, right == nil {
                continue
            }
            guard let leftNode = left , let rightNode = right else { return false }
            guard leftNode.val == rightNode.val else { return false }
            
            queue += [leftNode.left, rightNode.right, leftNode.right, rightNode.left]
        }
        
        return queue.isEmpty
        
        
        // Brute force
        /*guard root != nil else { return false }
        
        var stackLeft = [TreeNode]()
        var stackRight = [TreeNode]()
        
        if (root!.left == nil && root!.right != nil) ||
            (root!.left != nil && root!.right == nil) {
                return false
            }
        
        if root!.left != nil {
            stackLeft.append(root!.left!)
        }
        if root!.right != nil {
            stackRight.append(root!.right!)
        }
        
        while !stackLeft.isEmpty || !stackRight.isEmpty {
            
            let nodeLeft = stackLeft.removeLast()
            let nodeRight = stackRight.removeLast()
            
            if nodeLeft.val != nodeRight.val {
                return false
            }
            
            if (nodeLeft.left != nil && nodeRight.right == nil) ||
                (nodeLeft.left == nil && nodeRight.right != nil) ||
                (nodeLeft.right != nil && nodeRight.left == nil) ||
                (nodeLeft.right == nil && nodeRight.left != nil) {
                    return false
            }
            
            // left right
            // stack right left
            if nodeLeft.right != nil {
                stackLeft.append(nodeLeft.right!)
            }
            if nodeLeft.left != nil {
                stackLeft.append(nodeLeft.left!)
            }
            
            // right left
            // stack: left right
            if nodeRight.left != nil {
                stackRight.append(nodeRight.left!)
            }
            if nodeRight.right != nil {
                stackRight.append(nodeRight.right!)
            }
        }
        
        return true*/
    }
}
