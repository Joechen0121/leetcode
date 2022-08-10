class Solution {
    func judgeSquareSum(_ c: Int) -> Bool {
        
        for i in 0...Int(sqrt(Double(c))) {
            var left = i
            var right = Int(sqrt(Double(c)))
            while left <= right {
                let mid = (left + right)/2
                if ( i*i + mid*mid > c ) {
                    right = mid - 1
                }
                else if ( i*i + mid*mid < c ) {
                    left = mid + 1
                }
                else if ( i*i + mid*mid == c ){
                    return true
                }
            }
        }

        return false
          
    }
}