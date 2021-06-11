// 참고한 풀이 : https://leetcode.com/problems/egg-drop-with-2-eggs-and-n-floors/discuss/1253415/Swift-solution

class Solution {
    func twoEggDrop(_ n: Int) -> Int {
        var step = 0
        var drops = 0
        
        while drops < n {
            step += 1
            drops += step
        }
        
        return step
    }
}

// 코드에서 얻을 게 많았다기보단, 수학적 인사이트를 얻어갈 만 했다.
// 구하고자 하는 값을 x라고 둔다. 이 때 x는 깨지는 층 f를 알아내기 위해 던져야 하는 횟수이다.
// 무조건 x번 안에 구하려면, x층에서 먼저 던져본다. 깨진다면, 1층부터 x-1층까지 한번씩 던져볼 수 있으므로 x번의 움직임 안에 f를 알아낼 수 있다.
// 안깨진다면, x+(x-1)층에서 던져본다. 깨진다면, x+1층부터 x+(x-2)층까지 총 움직임 x번을 통해 f를 알아낼 수 있다.
// 이하 반복하면, 최대 x+(x-1)+(x-2)+...+1층 높이의 건물에서 x번 안에 f를 알아낼 수 있다.
// 이 때, x+(x+1)...+1이 n보다 커지려면 x는 몇이어야 하는가? 라는 문제.
