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
    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
        
        guard root != nil else { return 0 }
        
        var stack = [TreeNode]()
        var current = root
        var arr = [Int]()
        
        while current != nil || !stack.isEmpty {
            if current != nil {
                stack.append(current!)
                current = current?.left
            }
            else {
                let node = stack.removeLast()
                arr.append(node.val)
                current = node.right
            }
        }
        
        return arr[k-1]
    }
}
