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
    func minDepth(_ root: TreeNode?) -> Int {
        
        // BFS
        guard root != nil else { return 0 }
        var queue = [TreeNode]()
        var depth: Int = 1
        
        queue.append(root!)
        
        while(!queue.isEmpty) {
            
            for _ in 0..<queue.count {
                
                let node = queue.removeFirst()
                
                // node's left and right all nil, return
                if(node.left == nil && node.right == nil) {
                    return depth
                }
                
                if(node.left != nil) {
                    queue.append(node.left!)
                }
                
                if(node.right != nil) {
                    queue.append(node.right!)
                }
            }
            
            depth = depth + 1
        }
        return depth   
    }
}