import XCTest
import DSA

final class StackChallengesTests: XCTestCase {

    func testStackChallenge_reverseArray() {
        let list = ["a","b","c"]
        let reversedList = Stack.reverse(list)
        XCTAssertEqual(reversedList, ["c","b","a"])
    }

}
