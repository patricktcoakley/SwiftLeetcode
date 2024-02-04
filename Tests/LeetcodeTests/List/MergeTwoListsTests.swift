@testable import Leetcode
import XCTest

class MergeTwoListsTests: XCTestCase {
    let testCases = [
        (
            list1: ListNode.from(list: [1, 2, 4]),
            list2: ListNode.from(list: [1, 3, 4]),
            expected: ListNode.from(list: [1, 1, 2, 3, 4, 4])
        ),
        (
            list1: ListNode.from(list: []),
            list2: ListNode.from(list: []),
            expected: ListNode.from(list: [])
        ),
        (
            list1: ListNode.from(list: []),
            list2: ListNode.from(list: [0]),
            expected: ListNode.from(list: [0])
        ),
    ]

    func testMergeTwoListsTests() {
        for (list1, list2, expected) in testCases {
            XCTAssertEqual(mergeTwoLists(list1, list2), expected)
        }
    }
}
