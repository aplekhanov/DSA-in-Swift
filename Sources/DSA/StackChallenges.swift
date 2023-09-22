import Foundation

extension Stack {
    /// Challenge1: Reverse an Array
    /// 
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
    
    /// Challenge 2: Balance the parentheses
    ///
    /// Check for balanced parentheses. Given a string, check if are ( and ) characters,
    /// and return true if parentheses in the string are balanced
    ///
    /// `h((e))llo(world)()` – balanced
    ///
    /// `(hello world` – unbalanced
    public static func isParenthesesBalanced(in text: String) -> Bool {
        
        var stack = Stack<Character>()
        
        for char in text {
            if char == "(" {
                stack.push(char)
            } else if char == ")" {
                if stack.isEmpty {
                    return false
                } else {
                    stack.pop()
                }
            }
        }
        
        return stack.isEmpty
    }
}
