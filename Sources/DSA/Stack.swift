import Foundation

/// A stack is a LIFO (Last In, First Out) structure used for storing elements.
public struct Stack<Element> {
    
    private var storage: Array<Element> = []
    
    public init() {}
        
    /// Adds an element to the top.
    public mutating func push(_ element: Element) {
        storage.append(element)
    }
        
    /// Removes and returns the top element. Returns nil if empty.
    @discardableResult
    public mutating func pop() -> Element? {
        storage.popLast()
    }
    
    /// Shows the top element without removing it. Returns nil if empty.
    public func peek() -> Element? {
        storage.last
    }
    
    /// True if the stack is empty.
    public var isEmpty: Bool { peek() == nil }
}
