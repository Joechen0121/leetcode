class Solution {
    
    var result = [[Int]]()
    var path = [Int]()
    
    func backtracking(_ n: Int, _ k: Int, _ startIndex: Int, _ path: inout [Int], _ result: inout [[Int]]) {
        
        // condition
        if path.count == k {
            result.append(path)
            return
        }
        
        if startIndex > n {
            return
        }
        
        for i in startIndex...n {
            path.append(i)
            backtracking(n, k, i+1, &path, &result)
            path.removeLast()
        }
    }
    
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
       
        backtracking(n, k, 1, &path, &result)
        
        return result
    }
}
