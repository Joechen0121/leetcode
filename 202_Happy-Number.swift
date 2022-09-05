class Solution {
    func isHappy(_ n: Int) -> Bool {
        
        var num = n
        var res = 0
        var set = Set<Int>()

        while num != 1 {

            if set.contains(num) {
                return false
            }

            set.insert(num)

            while num > 0 {
                res += (num % 10) * (num % 10)
                num /= 10
            }

            num = res
            res = 0
        }

        return true
    }
}
