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
    func leafSimilar(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
        var tree1 = root1
        var tree2 = root2
        var values1 = [Int]()
        var values2 = [Int]()
        
        traverse(tree1, &values1)
        traverse(tree2, &values2)
        
        if values1 == values2 {
            return true
        } else {
            return false
        }
    }
    
    func traverse(_ node: TreeNode?, _ nodes: inout [Int]) {
        guard let node = node else { return } // node is not nil
        if node.left == nil && node.right == nil {
            nodes.append(node.val)
        }
        
        traverse(node.left, &nodes)
        traverse(node.right, &nodes)
    }
}

// 이지 난이도 문제였지만, 트리 알고리즘에서 자주 쓰이는 재귀형 traverse를 사용해봤다는 점에서 의미가 있다.
