// 참조 : https://leetcode.com/problems/merge-two-binary-trees/discuss/230374/Swift-148ms

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
    func mergeTrees(_ root1: TreeNode?, _ root2: TreeNode?) -> TreeNode? {
        if root1 == nil && root2 == nil {
            return nil // 둘다 비어 있을 경우는 리턴할 게 없다.
        }
        
        let root = TreeNode((root1?.val ?? 0) + (root2?.val ?? 0))
        // 먼저 루트값끼리 더해 준다. nil이면 더해줄 것이 없으니 0
        root.left = mergeTrees(root1?.left, root2?.left)
        // 여기서 이걸 재귀적으로 부르다니.. 노드 하나하나를 더해주는 함수였던 거다 이게 사실은.
        root.right = mergeTrees(root1?.right, root2?.right)
        // 이런 식으로 각 트리의 맨 밑까지 값을 더한 다음 루트에 붙여 주겠지.
        
        return root
    }
}

// 너무 이진 트리를 어렵게 생각했나.. 싶기도 하다.
// 일단 해설을 보면서 공부하고, 자료구조 책의 진도와 맞추면서 깨닫도록 하자.
