class Solution {
    func countOdds(_ low: Int, _ high: Int) -> Int {
        let numbers = (high - low) + 1
        
        if numbers % 2 == 0 {
            return numbers / 2
        } else {
            let cut = (numbers - 1) / 2
            if low % 2 == 1 {
                return cut + 1
            } else {
                return cut
            }
        }
    }
}
