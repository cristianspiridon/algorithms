import UIKit

class BST {
    
    var value:Double
    var left:BST?
    var right:BST?
    
    init(value:Double, leftNode:BST?, rightNode:BST?) {
        self.value = value
        self.left  = leftNode
        self.right = rightNode
    }
    
    func insert(value:Double) -> BST {
        
        if value < self.value {
            if left == nil {
                self.left = BST(value: value, leftNode: nil, rightNode: nil)
            } else {
                self.left?.insert(value: value)
            }
        } else {
            if right == nil {
                self.right = BST(value: value, leftNode: nil, rightNode: nil)
            } else {
                self.right?.insert(value: value)
            }
        }
        
        return self
    }

    func closestHelper(target:Double, closest: Double = Double.greatestFiniteMagnitude) -> Double {
        
        let closeValue = abs(target - closest) > abs(target - value) ? value : closest
    
        if let leftNode = left, value > target {
            return leftNode.closestHelper(target: target, closest: closeValue)
        }
    
        if let rightNode = right, value < target {
            return rightNode.closestHelper(target: target, closest: closeValue)
        }

        return closeValue
    }

}

var bstTree = BST(value: 10, leftNode: nil, rightNode: nil)
bstTree.insert(value: 5).insert(value: 15).insert(value: 2).insert(value: 5).insert(value: 13).insert(value: 22).insert(value: 1).insert(value: 14)

print(bstTree.closestHelper(target: 23))

