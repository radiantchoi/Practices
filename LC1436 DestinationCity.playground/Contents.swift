class Solution {
    func destCity(_ paths: [[String]]) -> String {
        var outgoing = [String]()
        var incoming = [String]()
        var result = ""
        
        for path in paths {
            outgoing.append(path[0])
            incoming.append(path[1])
        }
        
        for i in 0..<incoming.count {
            if !outgoing.contains(incoming[i]) {
                result = incoming[i]
                break
            }
        }
        
        return result
    }
}
