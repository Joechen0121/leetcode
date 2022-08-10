class Solution {
    func myPow(_ x: Double, _ n: Int) -> Double {
        
        if ( n == 0 ) {
            return 1
        }
        else if ( n == 1) {
            return x
        }
        else if ( n < 0 ) {
            return 1/myPow(x, -n)
        }
        else if ( n%2 == 0 ) {
            return myPow(x * x, n/2)
        }
        else {
            return x * myPow(x, n-1)
        }
    }
}