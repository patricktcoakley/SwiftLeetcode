@testable import Leetcode
import XCTest

final class LongestCommonPrefixTests: XCTestCase {
    let testCases = [
        (strs: ["flower", "flow", "flight"], expected: "fl"),
        (strs: ["dog", "racecar", "car"], expected: "")
    ]

    func testLongestCommonPrefix() {
        for (strs, expected) in testCases {
            XCTAssertEqual(longestCommonPrefix(strs), expected)
        }
    }
}
