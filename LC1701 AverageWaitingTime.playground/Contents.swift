
class Solution {
    func averageWaitingTime(_ customers: [[Int]]) -> Double {
        var total = 0
        var time = 0
        
        for customer in customers {
            if time <= customer[0] {
                time = customer[0]
                total += customer[1]
                time += customer[1]
            } else {
                var wait = customer[1] + (time - customer[0])
                total += wait
                time += customer[1]
            }
        }
        
        return Double(total)/Double(customers.count)
    }
}

// 결괏값을 Double로 내고 싶으면, Double(total/customers.count)는 틀림
// 둘 다 Double로 일단 만들고 나눗셈을 해야 올바른 결과가 나온다. 이 뭔..
