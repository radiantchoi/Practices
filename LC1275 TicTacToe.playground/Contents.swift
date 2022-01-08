class Solution {
    func tictactoe(_ moves: [[Int]]) -> String {
        var a = [[Int]]()
        var b = [[Int]]()
        var result = "Pending"
        
        for i in 0..<moves.count {
            if i % 2 == 0 {
                a.append(moves[i])
            } else {
                b.append(moves[i])
            }
        }
        
        var ax = [Int: Int]()
        var ay = [Int: Int]()
        var bx = [Int: Int]()
        var by = [Int: Int]()
        
        for move in a {
            if ax.keys.contains(move[0]) {
                ax[move[0]]! += 1
            } else {
                ax[move[0]] = 1
            }
            
            if ay.keys.contains(move[1]) {
                ay[move[1]]! += 1
            } else {
                ay[move[1]] = 1
            }
        }
        
        for move in b {
            if bx.keys.contains(move[0]) {
                bx[move[0]]! += 1
            } else {
                bx[move[0]] = 1
            }
            
            if by.keys.contains(move[1]) {
                by[move[1]]! += 1
            } else {
                by[move[1]] = 1
            }
        }
        
        if ax.values.contains(3) {
            result = "A"
        } else if ay.values.contains(3) {
            result = "A"
        } else if bx.values.contains(3) {
            result = "B"
        } else if by.values.contains(3) {
            result = "B"
        } else if a.contains([0,0]) && a.contains([1,1]) && a.contains([2,2]) {
            result = "A"
        } else if a.contains([0,2]) && a.contains([1,1]) && a.contains([2,0]) {
            result = "A"
        } else if b.contains([0,0]) && b.contains([1,1]) && b.contains([2,2]) {
            result = "B"
        } else if b.contains([0,2]) && b.contains([1,1]) && b.contains([2,0]) {
            result = "B"
        } else if moves.count == 9 {
            result = "Draw"
        }
        
        return result
    }
}

// 역시 구현문제야 무지 길다
