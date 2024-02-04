@testable import Leetcode
import XCTest

final class LengthOfLastWordTests: XCTestCase {
    let testCases = [
        (s: "Hello World", expected: 5),
        (s: "   fly me   to   the moon  ", expected: 4),
        (s: "luffy is still joyboy", expected: 6)
    ]

    func testLengthOfLastWord() {
        for (s, expected) in testCases {
            XCTAssertEqual(lengthOfLastWord(s), expected)
        }
    }
}
