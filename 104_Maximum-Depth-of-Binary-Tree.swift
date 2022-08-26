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
    func maxDepth(_ root: TreeNode?) -> Int {
        
        guard root != nil else { return 0 }
        
        var queue = [TreeNode]()
        var depth = 0
        
        queue.append(root!)
        
        while !queue.isEmpty {
            
            let size = queue.count
            
            for _ in 0..<size {
                
                let current = queue.removeFirst()
                
                if current.left != nil {
                    queue.append(current.left!)
                }
                
                if current.right != nil {
                    queue.append(current.right!)
                }
                
            }
            depth += 1
        }
        
        return depth
    }
}
