class Solution {
    func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
        
        // Greedy
        var totalTank = 0
        var currentTank = 0
        var startIndex = 0
        
        for i in 0..<gas.count {
            totalTank += gas[i] - cost[i]
            currentTank += gas[i] - cost[i]
            
            if currentTank < 0 {
                //update start index
                startIndex = i + 1
                currentTank = 0
            }
        }
        
        if totalTank < 0 { return -1 }
        
        return startIndex
        
        // Brute force - Time limit exceeded
        /*var tank = 0
        var index = 0
        
        for i in 0..<gas.count {
            
            tank = gas[i] - cost[i]
            index = (i+1) % gas.count
            
            while tank > 0 && index != i {
                // circuit
                tank = gas[index] - cost[index] + tank
                index = (index+1) % gas.count
            }
            
            if tank >= 0 && index == i { return i } 
        }
        
        return -1*/
    }
}
