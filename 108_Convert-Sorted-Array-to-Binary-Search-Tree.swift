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
    func preorder(_ nums: [Int], _ left: Int, _ right: Int) -> TreeNode? {
        
        var mid = (left + right)/2
        
        if left > right {
            return nil
        }
        
        let node = TreeNode(nums[mid])
        
        node.left = preorder(nums, left, mid-1)
        node.right = preorder(nums, mid+1, right)
        
        return node
    }
    
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        return preorder(nums, 0, nums.count-1)
    }
}
