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
    func isValidBST(_ root: TreeNode?) -> Bool {
    
        guard root != nil else { return false }
        
        // change to inorder, array contains inorder value
        var stack = [TreeNode]()
        var arr = [Int]()
        var current = root
        
        while !stack.isEmpty || current != nil {
            // left parent right
            
            if current != nil {
                stack.append(current!)
                current = current?.left
            }
            else {
                let node = stack.last
                arr.append(stack.removeLast().val)
                current = node?.right
            }
        }
        
        // compare array
        for i in 0..<arr.count-1 {
            if arr[i] >= arr[i+1] {
                return false
            }
        }
        
        return true
    }
}
