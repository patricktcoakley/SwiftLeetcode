@testable import Leetcode
import XCTest

final class IsAnagramTests: XCTestCase {
    let testCases = [
        (lhs: "anagram", rhs: "nagaram", expected: true),
        (lhs: "rat", rhs: "car", expected: false),
    ]

    func testIsAnagram() {
        for (lhs, rhs, expected) in testCases {
            XCTAssertEqual(isAnagram(lhs, rhs), expected)
        }
    }
}
