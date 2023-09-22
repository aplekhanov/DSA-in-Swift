import XCTest
import DSA

final class StackChallengesTests: XCTestCase {

    func testStackChallenge_reverseArray() {
        let list = ["a","b","c"]
        let reversedList = Stack.reverse(list)
        XCTAssertEqual(reversedList, ["c","b","a"])
    }

    func testStackChallenge_balanceParentheses() {
        let balanced = "h((e))llo(world)()"
        let unbalancedLeft = "(hello world"
        let unbalancedRight = "hello world)"
        XCTAssertTrue(Stack<String>.isParenthesesBalanced(in: balanced))
        XCTAssertFalse(Stack<String>.isParenthesesBalanced(in: unbalancedLeft))
        XCTAssertFalse(Stack<String>.isParenthesesBalanced(in: unbalancedRight))
    }
}
