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

var a = [9,4,10,3]
bubbleSort(&a)
