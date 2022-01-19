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
    func getMinimumDifference(_ root: TreeNode?) -> Int {
        var values = [Int]()
        var diff = 10001
        
        traverse(root, &values)
        values.sort()
        
        for i in 1..<values.count {
            diff = min(diff, values[i] - values[i-1])
        }
        
        return diff
    }
    
    func traverse(_ root: TreeNode?, _ nums: inout [Int]) {
        guard let root = root else { return }
        nums.append(root.val)
        traverse(root.left, &nums)
        traverse(root.right, &nums)
    }
}
