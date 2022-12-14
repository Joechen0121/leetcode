class Solution {
    let map: [Character: Int] = [
        "A": 1,
        "B": 2,
        "C": 3,
        "D": 4,
        "E": 5,
        "F": 6,
        "G": 7,
        "H": 8,
        "I": 9,
        "J": 10,
        "K": 11,
        "L": 12,
        "M": 13,
        "N": 14,
        "O": 15,
        "P": 16,
        "Q": 17,
        "R": 18,
        "S": 19,
        "T": 20,
        "U": 21,
        "V": 22,
        "W": 23,
        "X": 24,
        "Y": 25,
        "Z": 26,
    ]
    
    func titleToNumber(_ columnTitle: String) -> Int {
        
        var res = 0
        let str = Array(columnTitle)
        let strCount = columnTitle.count - 1
        var i = 0

        while i <= strCount {
            if let value = map[str[strCount - i]] {
                res += Int(powf(26, Float(i))) * value
            }
            i += 1
        }

        return res 
    }
}
