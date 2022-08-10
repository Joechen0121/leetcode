class Solution {
    func isPerfectSquare(_ num: Int) -> Bool {
        var i: Int = 0

        while ( i*i <= num ) {
            if ( i*i == num) {
                return true
            }
            i = i + 1
        }
        
        return false       
    }
}