import UIKit

class BST {
    
    var value:Int
    var left:BST?
    var right:BST?
    
    init(value:Int, leftNode:BST?, rightNode:BST?) {
        self.value = value
        self.left  = leftNode
        self.right = rightNode
    }
    
    func insert(value:Int) -> BST {
        
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
    
    func printme() {
        print(value)
        
        if left != nil {
            self.left?.printme()
        }
        
        print("end_left")
        
        if right != nil {
            self.right?.printme()
        }
        print("end_right")
        
    }
    
}

var bstTree = BST(value: 10, leftNode: nil, rightNode: nil)

bstTree.insert(value: 5).insert(value: 15).insert(value: 2).insert(value: 5).insert(value: 13).insert(value: 22).insert(value: 1).insert(value: 14)




func findClosestValue(bstTree:BST, targetValue:Int) -> Int? {
    let closestValue = Double.greatestFiniteMagnitude
    
    
    return nil
}
