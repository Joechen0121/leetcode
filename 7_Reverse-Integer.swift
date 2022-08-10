class Solution {
    func reverse(_ x: Int) -> Int {
        
        let sign = x < 0 ? -1 : 1
        var num = x * sign
        var result: Int = 0

        while (num > 0) {
            let dig = num % 10
            result = result * 10 + dig
            num = num/10

            if result > Int32.max || result < Int32.min {
                return 0
            }
        }

        return sign * result     
    }
}