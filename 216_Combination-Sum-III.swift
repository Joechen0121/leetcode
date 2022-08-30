class Solution {
    var result = [[Int]]()
    var path = [Int]()
    var sum = 0
    
    func backtracking(_ k: Int, _ n: Int, _ path: inout [Int], _ startIndex: Int, _ sum: inout Int) {
        
        if sum > n {
            return 
        }
        
        if sum == n && path.count == k {
            result.append(path)
            return 
        }
        
        if startIndex > n {
            return 
        }
        
        for i in startIndex..<10 {
            sum += i
            path.append(i)
            backtracking(k, n, &path, i+1, &sum)
            path.removeLast()
            sum -= i
        }
    }
    
    func combinationSum3(_ k: Int, _ n: Int) -> [[Int]] {
        
        let maxNum = (n > 9) ? 10 : n
        
        backtracking(k, n, &path, 1, &sum)
        
        return result
    }
}
