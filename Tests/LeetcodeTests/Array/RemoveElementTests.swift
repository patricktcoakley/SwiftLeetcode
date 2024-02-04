@testable import Leetcode
import XCTest

final class RemoveElementTests: XCTestCase {
    let testCases = [
        (nums: [3, 2, 2, 3], val: 3, expected: 2),
        (nums: [0, 1, 2, 2, 3, 0, 4, 2], val: 2, expected: 5)
    ]

    func testIsAnagram() {
        for (var nums, val, expected) in testCases {
            let result = removeElement(&nums, val)
            XCTAssertEqual(result, expected)
        }
    }
}
