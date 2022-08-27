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
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        
        // Method: DFS preorder
        guard let root = root else { return [] }
        
        var stackNode = [TreeNode]()
        var stackStr = [String]()
        var res = [String]()
        
        stackNode.append(root)
        stackStr.append(String(root.val))
        
        while !stackNode.isEmpty {
            
            let node = stackNode.removeLast()
            let str = stackStr.removeLast()
            
            if node.left == nil && node.right == nil {
                res.append(str)
            }
            
            if let nodeRight = node.right {
                stackNode.append(nodeRight)
                stackStr.append(str + "->\(nodeRight.val)")
            }
            
            if let nodeLeft = node.left {
                stackNode.append(nodeLeft)
                stackStr.append(str + "->\(nodeLeft.val)")
            }
        }
        return res
    }
}
