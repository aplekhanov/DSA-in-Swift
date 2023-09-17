import XCTest
import DSA

final class StackTests: XCTestCase {

    var sut: Stack<Int>!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Stack()
    }
    
    override func tearDownWithError() throws {
        sut = nil
    }
    
    func testStack_isEmpty() {
        XCTAssertTrue(sut.isEmpty)
    }
    
    func testStack_push_peek() {
        sut.push(1)
        XCTAssertNotNil(sut.peek())
        XCTAssertEqual(sut.peek()!, 1)
        XCTAssertFalse(sut.isEmpty)
    }
    
    func testStack_push_pop() {
        sut.push(1)
        XCTAssertFalse(sut.isEmpty)
        let popped = sut.pop()
        XCTAssertNotNil(popped)
        XCTAssertEqual(popped, 1)
        XCTAssertNil(sut.pop())
        XCTAssertTrue(sut.isEmpty)
    }
}
