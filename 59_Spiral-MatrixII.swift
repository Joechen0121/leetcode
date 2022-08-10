class Solution {
    func generateMatrix(_ n: Int) -> [[Int]] {

        var result: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: n)
        let count: Int = n*n
        var val: Int = 1
        var left: Int = 0
        var right: Int = n-1
        var top: Int = 0
        var bottom: Int = n-1

        while(val <= count) {
            // left to right
            for i in stride(from: left, to: right+1, by: 1) where val <= count {
                result[top][i] = val
                val = val + 1
            }
            top = top + 1

            // top to bottom
            for i in stride(from: top, to: bottom+1, by: 1) where val <= count  {
                result[i][right] = val
                val = val + 1
            }
            right = right - 1

            // right to left
            for i in stride(from: right, to: left-1, by: -1) where val <= count  {
                result[bottom][i] = val
                val = val + 1
            }
            bottom = bottom - 1

            // bottom to top
            for i in stride(from: bottom, to: top-1, by: -1) where val <= count  {
                result[i][left] = val
                val = val + 1
            }
            left = left + 1

        }

        return result       
    }
}