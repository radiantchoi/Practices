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
    func postorder(_ root: Node?) -> [Int] {
        var result = [Int]()
        
        traverse(root, &result)
        
        return result
    }
    
    func traverse(_ root: Node?, _ arr: inout [Int]) {
        guard let root = root else { return }
        
        for child in root.children {
            traverse(child, &arr)
        }
        
        arr.append(root.val)
    }
}

// 쫄지 말자. 트리든, DFS든.
