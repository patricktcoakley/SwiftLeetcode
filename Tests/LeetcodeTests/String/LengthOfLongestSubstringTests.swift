@testable import Leetcode
import XCTest

final class LengthOfLongestSubstringTests: XCTestCase {
    let testCases = [
        (s: "abcabcbb", expected: 3),
        (s: "bbbbb", expected: 1),
        (s: "pwwkew", expected: 3),
    ]

    func testLengthOfLongestSubstring() {
        for (s, expected) in testCases {
            XCTAssertEqual(lengthOfLongestSubstring(s), expected)
        }
    }
}
