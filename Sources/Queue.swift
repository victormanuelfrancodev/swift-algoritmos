
import Foundation

protocol Queue {
    associatedtype Element
    
    mutating func enqueue(_ element: Element)
    mutating func dequeue() -> Element?
    var isEmpty: Bool { get }
    var peek: Element? { get }
}

struct QueueArray<T>: Queue {

    private var array: [T] = []
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    var peek: T? {
        return array.first
    }
    
    mutating func enqueue(_ element: T){
        array.append(element)
    }
    
    mutating func dequeue() -> T? {
        return isEmpty ? nil: array.removeFirst()
    }
    
}
