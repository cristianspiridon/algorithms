//Smallest Difference
//
//Write a function that takes in two non-empty arrays of integers. The function should find the pair of numbers (one from the first array, one from the second array) whose absolute difference is closest to zero. The function should return an array containing these two numbers, with the number from the first array in the first position. Assume that there will only be one pair of numbers with the smallest difference.
//
//Sample input: [-1, 5, 10, 20, 28, 3], [26, 134, 135, 15, 17]
//Sample output: [28, 26]



import UIKit

let firstArray   = [-1, 5, 10, 20, 28, 3]
let seccondArray = [26, 134, 135, 15, 17]
let output = [28, 26]

func findSmallestDifference(firstArray:[Int], secondArray:[Int]) -> [Int] {
    
    let sortedA = firstArray.sorted()
    let sortedB = secondArray.sorted()
    
    var smallest:Int = Int.max
    var potentialPair = [Int]()
    
    var indexA = 0
    var indexB = 0
    
    while( indexA < sortedA.count && indexB < sortedB.count) {
        
        let newDiff:Int = abs(sortedA[indexA] - sortedB[indexB])
        
        if newDiff < smallest {
            smallest      = newDiff
            potentialPair = [sortedA[indexA], sortedB[indexB]]
        }
        
        if sortedA[indexA] < sortedB[indexB] {
            indexA += 1
        } else {
            indexB += 1
        }
    }
    
    return potentialPair
}

print(findSmallestDifference(firstArray: firstArray, secondArray: seccondArray))
