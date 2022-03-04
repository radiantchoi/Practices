/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var children: [Node]
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.children = []
 *     }
 * }
 */

class Solution {
    func preorder(_ root: Node?) -> [Int] {
        var result = [Int]()
        pick(root, &result)
        return result
    }
    
    func pick(_ root: Node?, _ values: inout [Int]) {
        guard let root = root else { return }
        values.append(root.val)
        for child in root.children {
            pick(child, &values)
        }
    }
}
