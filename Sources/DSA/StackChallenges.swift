import Foundation

extension Stack {
    /// Challenge1: Reverse an Array
    /// Create a function that uses a stack to print the contents of an array in reversed order.
    public static func reverse(_ array: Array<Element>) -> Array<Element> {
        var stack = Stack<Element>()
        array.forEach { stack.push($0) }
        var reversedArray = Array<Element>()
        while let element = stack.pop() {
            reversedArray.append(element)
            print(element)
        }
        return reversedArray
    }
}
