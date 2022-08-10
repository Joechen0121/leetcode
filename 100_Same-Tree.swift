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
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        var stackP: [TreeNode] = [TreeNode]()
        var stackQ: [TreeNode] = [TreeNode]()

        if (p == nil) && (q == nil) {
            return true
        }
        else if ((p == nil) && (q != nil) ) || ((p != nil) && (q == nil)) {
            return false
        }

        stackP.append(p!)
        stackQ.append(q!)

        while(!stackQ.isEmpty || !stackQ.isEmpty) {
            let nodeP = stackP.removeLast()
            let nodeQ = stackQ.removeLast()

            if (nodeP.val != nodeQ.val) {
                return false
            }

            if (nodeP.left != nil) && (nodeQ.left != nil) {
                stackP.append(nodeP.left!)
                stackQ.append(nodeQ.left!)
            }
            else if ( (nodeP.left != nil) && (nodeQ.left == nil) ) ||
                        ( (nodeP.left == nil) && (nodeQ.left != nil) ){
                return false
            }

            if (nodeP.right != nil) && (nodeQ.right != nil) {
                stackP.append(nodeP.right!)
                stackQ.append(nodeQ.right!)
            }
            else if ( (nodeP.right != nil) && (nodeQ.right == nil) ) ||
                        ( (nodeP.right == nil) && (nodeQ.right != nil) ){
                return false
            }
        }
        return true
    }
}