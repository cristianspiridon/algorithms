//Three Number Sum

//Write a function that takes in a non-empty array of distinct integers and an integer representing a target sum. The function should find all triplets in the array that sum up to the target sum and return a two-dimensional array of all these triplets. The numbers in each triplet should be ordered in ascending order, and the triplets themselves should be ordered in ascending order with respect to the numbers they hold. If no three numbers sum up to the target sum, the function should return an empty array.
//
//Sample input: [12, 3, 1, 2, -6, 5, -8, 6], 0
//Sample output: [[-8, 2, 6], [-8, 3, 5], [-6, 1, 5]]


import UIKit

let array = [12, 3, 1, 2, -6, 5, -8, 6]
let targetSum = 0
let output = [[-8, 2, 6], [-8,3,5], [-6,1,5]]

func threeNumberSum(array:[Int], targetSum:Int) -> [[Int]]  {
    
    var result = [[Int]]()
    let sorted = array.sorted()
    var currentIndex = 0

    while currentIndex < array.count - 2 {
        
        var left = currentIndex + 1
        var right = array.count - 1
        
        while left < right {
        
            let currentSum = sorted[currentIndex] + sorted[left] + sorted[right]

            if currentSum == targetSum {
                result.append([sorted[currentIndex], sorted[left], sorted[right]])
                right-=1
                left+=1
            } else if currentSum < targetSum {
                left+=1
            } else {
                right-=1
            }

        }
    
        currentIndex+=1
    }
    
    return result
}




// test

let result = threeNumberSum(array: array, targetSum: targetSum)

print(result)
if result == output {
    print("test completed")
} else {
    print("test failed")
}

