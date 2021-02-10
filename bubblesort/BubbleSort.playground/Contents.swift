import UIKit

public func bubbleSort<Element>(_ array: inout [Element]) where Element: Comparable {
    // 1 There is no need to sort the collection if it has less than two elements.
    guard array.count >= 2 else{
        return
    }
    //2
    for end in (1..<array.count).reversed(){
        print(end)
        var swapped = false
       // 3
        for current in 0..<end{
            if array[current] > array[current + 1]{
                array.swapAt(current, current + 1)
                swapped = true
            }
        }
        if !swapped {
            return
        }
    }
}

func bubblesort3<Element>(_ myArray: inout [Element]) where Element:Comparable{
    guard myArray.count > 2 else{
        return
    }
    
    for end in (1..<myArray.count).reversed(){
        var swipe = false
        
        for x in 0..<end{
            if myArray[x] > myArray[x+1]{
                myArray.swapAt(x, x+1)
                swipe = true
            }
        }
        if !swipe { return }
    }
}


func selectsort<Element>(_ myArray: inout [Element]) where Element:Comparable{
    guard myArray.count >= 2 else {
        return
    }
    
    for current in (0..<myArray.count-1){
        var lowest = current
        for other in current+1..<myArray.count{
            if (myArray[lowest] > myArray[other]){
                lowest = other
            }
        }
        if (lowest != current){
            myArray.swapAt(current, lowest)
        }
    }
}


func selectSort3<Element> (_ myArray: inout [Element]) where Element:Comparable{
    
    guard myArray.count >= 2 else{
        return
    }
    
    for current in 0..<myArray.count-1{
        var lowest = current
        
        for other in current+1..<myArray.count{
            if (myArray[lowest]>myArray[other]){
                lowest = other
            }
        }
        
        if lowest != current {
            myArray.swapAt(current, lowest)
        }
        print(myArray)
    }
    
    
    
}

var a = [10,4,5,8,1]
selectSort3(&a)

