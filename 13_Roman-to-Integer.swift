class Solution {
    let map: [Character: Int] = [
        "I": 1,
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000,
    ]

    func romanToInt(_ s: String) -> Int {
        
        let arr = Array(s)
        var res = 0
        
        for i in 0..<arr.count {
            if (i+1 < arr.count) && (map[arr[i]]! < map[arr[i+1]]!) {
                res -= map[arr[i]]!
            }
            else {
                res += map[arr[i]]!
            }
        }
        
        return res
    }
}
