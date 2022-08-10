class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        
        var arr = [Int](repeating: 0, count: temperatures.count)
        var stack = [Int]()

        for index in stride(from: temperatures.count-1, through: 0, by: -1) {

            while (!stack.isEmpty) && (temperatures[index] >= temperatures[stack.last!]) {
                stack.removeLast()
            }

            if !stack.isEmpty {
                arr[index] = stack.last! - index
            }

            stack.append(index)
        }

        return arr
    }
}