//
//Four Number Sum
//
//Write a function that takes in a non-empty array of distinct integers and an integer representing a target sum. The function should find all quadruplets in the array that sum up to the target sum and return a two-dimensional array of all these quadruplets in no particular order. If no four numbers sum up to the target sum, the function should return an empty array.
//
//Sample input: [7, 6, 4, -1, 1, 2], 16
//Sample output: [[7, 6, 4, -1], [7, 6, 1, 2]]

let input     = [7, 6, 4, -1, 1, 2]
let targetSum = 16
let output    = [[7, 6, 4, -1], [7, 6, 1, 2]]


import UIKit

func fourNumberSum (array:[Int], targetSum:Int) -> [[Int]] {

    var quadruplets = [[Int]]()
    var allPairSums = [Int:[[Int]]]()
    
    for i in 1...array.count-2 {
        for j in i+1...array.count-1 {
            
            let potentialSum = targetSum - array[i] - array[j]
            
            if let sums = allPairSums[potentialSum]{
                for sum in sums {
                    quadruplets.append([sum[0], sum[1], array[i], array[j]])
                }
            }
        }

        for k in 0...i-1 {
        
            let qSum = array[k] + array[i]
            
            if allPairSums[qSum] == nil {
                allPairSums[qSum] = [[Int]]()
            }
            
            allPairSums[qSum]?.append([array[k], array[i]])
        }
    }
    
    return quadruplets
}

let result = fourNumberSum(array: input, targetSum: targetSum)
print("result ", result)

if result == output {
    print("test completed")
} else {
    print("test failed")
}

