import UIKit

//Two Number Sum

//Write a function that takes in a non-empty array of distinct integers and an integer representing a target sum. If any two numbers in the input array sum up to the target sum, the function should return them in an array, in sorted order. If no two numbers sum up to the target sum, the function should return an empty array. Assume that there will be at most one pair of numbers summing up to the target sum.
//
//Sample input: [3, 5, -4, 8, 11, 1, -1, 6], 10
//Sample output: [-1, 11]

let array = [3, 5, -4, 8, 11, 1, -1, 6]
let targetSum = 10

let output = [-1, 11]


// solution

// *** 1st solution, double for O(n^2) Quadratic time - because of the double for loop, O(1) space


//func twoNumberSum(array:[Int], targetSum:Int) -> [Int]? {
//
//    for first in 0..<array.count-1 {
//        print(array[first])
//        for second in first+1..<array.count{
//            if array[first] + array[second] == targetSum {
//               return [array[first], array[second]].sorted()
//            }
//        }
//    }
//
//    return nil
//}

// *** 2nd solution, using a hashtable O(n) time, O(n) space

//func twoNumberSum(array:[Int], targetSum:Int) -> [Int]? {
//
//    var nums = [Int:Bool]()
//
//    for element in array {
//        let potentialMatch = targetSum - element
//        if nums[potentialMatch] == true {
//            return [potentialMatch, element].sorted()
//        } else {
//            nums[element] = true
//        }
//    }
//
//    return nil
//
//}

// *** 3rd solution, using a sorted array  O(nlog(n)) time and O(n) space

func twoNumberSum(array:[Int], targetSum:Int) -> [Int]? {
    
    let sorted = array.sorted()
    
    print(sorted)
    
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    while leftIndex < rightIndex {
        
        let currentSum = sorted[leftIndex] + sorted[rightIndex]
        
        if currentSum == targetSum {
            return [sorted[leftIndex], sorted[rightIndex]].sorted()
        } else if currentSum < targetSum {
            leftIndex = leftIndex + 1
        } else {
            rightIndex = rightIndex - 1
        }
        
    }
    
    return nil
}



// test

if let result = twoNumberSum(array: array, targetSum: targetSum) {
    
    print(result)
    if result == output {
        print("test completed")
    } else {
        print("test failed")
    }
}





