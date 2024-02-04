@testable import Leetcode
import XCTest

final class MaxAreaTests: XCTestCase {
    let testCases = [
        (height: [1, 8, 6, 2, 5, 4, 8, 3, 7], expected: 49),
        (height: [1, 1], expected: 1)
    ]

    func testMaxArea() {
        for (height, expected) in testCases {
            XCTAssertEqual(maxArea(height), expected)
        }
    }
}
