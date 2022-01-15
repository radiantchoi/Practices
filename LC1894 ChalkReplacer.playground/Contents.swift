class Solution {
    func chalkReplacer(_ chalk: [Int], _ k: Int) -> Int {
        var consuming = chalk.reduce(0, +)
        var chalks = k % consuming
        let student = chalk
        
        for i in 0..<student.count {
            if chalks < student[i] {
                return i
            } else {
                chalks -= student[i]
            }
        }
        
        return 0
    }
}

// 수학적 잔머리..
