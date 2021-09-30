// 참고한 풀이 : https://leetcode.com/problems/flood-fill/discuss/557208/Swift

class Solution {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
        if image[sr][sc] == newColor {
            return image // 이미 시작 셀의 색상이 바꾸고자 하는 색과 같다면 바꿀 필요가 없다
        }
        
        var result = image // 일단 결과값으로 내놓을 이미지 복사 먼저
        search(&result, sr, sc, image[sr][sc], newColor) // 함수 활용!
        return result
    }
    
    func search(_ image: inout [[Int]], _ x: Int, _ y: Int, _ color: Int, _ newColor: Int) {
        if x < 0 || y < 0 || x >= image.count || y >= image[x].count || image[x][y] != color {
            return
        }
        // x와 y가 인덱스를 벗어났거나, 해당 셀의 색상이 시작 셀의 초기 색상과 같지 않다면 함수 종료
        
        image[x][y] = newColor // 입력받은 셀의 색상을 바꾸고
        search(&image, x-1, y, color, newColor)
        search(&image, x, y-1, color, newColor)
        search(&image, x+1, y, color, newColor)
        search(&image, x, y+1, color, newColor)
        // 전후좌우에 수행한다
    }
}

// 전후좌우 인덱스를 생각한 것까지는 좋았다.
// 다만, 원하는 결과값이 나올 때까지 while이나 재귀 중 어떤 것을 써야 할지에 대한 감이 없었다.
// inout을 사용한 참고 풀이에 상당히 감탄했다. 앞으로 그래프는 이 방법도 생각해야겠다.
