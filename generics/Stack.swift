import Foundation

public protocol Stackable {
    associatedtype Element: Equatable
    var count: Int { get }
    var isEmpty: Bool { get }
    
    mutating func push(element: Element)
    mutating func pop() -> Element?
    func peek() -> Element?
   
}

public struct Stack<T: Equatable>: Stackable {
    public var count: Int {
        return elements.count
    }
    
    public var isEmpty: Bool {
        return elements.isEmpty
    }
    
    private var elements = [T]()
    
    public mutating func push(element: T) {
        elements.append(element)
    }
    
    public mutating func pop() -> T? {
        elements.popLast()
    }
    
    public func peek() -> T? {
        elements.last
    }
    
}

var numStack = Stack<Int>()
numStack.push(element: 1)
numStack.push(element: 23)
numStack.push(element: 24)
numStack.push(element: 25)

print(numStack.peek())
print(numStack.pop())
numStack.push(element: 5)
print(numStack.peek())
print(numStack)
print(numStack.pop())
print(numStack.count)
print(numStack.pop())
print(numStack.pop())
print(numStack)
print(numStack.isEmpty)
print(numStack.pop())
print(numStack)
print(numStack.isEmpty)
print(numStack.pop())
print(numStack.peek())
numStack.push(element: 6)
print(numStack)

