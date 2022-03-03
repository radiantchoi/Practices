class Solution {
    func canMakeArithmeticProgression(_ arr: [Int]) -> Bool {
        let arr = arr.sorted()
        var index = 2
        
        while index < arr.count {
            if arr[index-1] - arr[index-2] == arr[index] - arr[index-1] {
                index += 1
            } else {
                return false
            }
        }
        
        return true
    }
}
