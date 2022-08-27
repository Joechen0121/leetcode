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
    func countNodes(_ root: TreeNode?) -> Int {
        
        // Method 1
        guard let root = root else { return 0 }
        return 1 + countNodes(root.left) + countNodes(root.right)
        
        // Method 2 : BFS Count
        /*var count = 0
        
        guard root != nil else { return count }
        
        var queue = [root] 
        
        while !queue.isEmpty {
            
            guard let node = queue.removeFirst() else { continue }
            count += 1
           
            if let nodeLeft = node.left {
                queue.append(nodeLeft)
            }
            if let nodeRight = node.right {
                queue.append(nodeRight)
            }
        }
        
        return count*/
    }
}
