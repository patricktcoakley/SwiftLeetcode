@testable import Leetcode
import XCTest

class ListNodeTests: XCTestCase {
    func testfromListReturnsNilWhenValsIsEmpty() {
        XCTAssertNil(ListNode.from(list: []))
    }

    func testfromListReturnsNilWhenValsHasNil() {
        XCTAssertNil(ListNode.from(list: [nil]))
    }

    func testfromListReturnsListNodeWhenValsIsNotEmpty() {
        XCTAssert(ListNode.from(list: [1]) == ListNode(1))
    }

    func testfromListReturnsListNodeWhenValsHasMultipleElements() {
        let expected = ListNode(1, ListNode(2, ListNode(3, ListNode(4))))
        let result = ListNode.from(list: [1, 2, 3, 4])
        XCTAssertEqual(result, expected)
    }
}
