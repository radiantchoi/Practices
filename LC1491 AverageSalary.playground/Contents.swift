class Solution {
    func average(_ salary: [Int]) -> Double {
        let salary = salary.sorted()
        return Double(Array(salary[1..<salary.count-1]).reduce(0, +)) / Double(salary.count-2)
    }
}
