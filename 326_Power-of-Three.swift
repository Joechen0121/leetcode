class Solution {
    func isPowerOfThree(_ n: Int) -> Bool {
        
        var sum: Int = 3

        if ( n == 1 ) {
            return true
        }
        else if ( n < 3 ) {
            return false
        }

        while ( sum <= n ) {
            if ( sum == n ) {
                return true
            }
            else {
                sum = sum * 3
            }
        }

        return false   
    }
}