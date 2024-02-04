@testable import Leetcode
import XCTest

final class IsSameTreeTests: XCTestCase {
    let testCases = [
        (
            p: TreeNode.from(ints: [1, 2, 3]),
            q: TreeNode.from(ints: [1, 2, 3]),
            expected: true
        ),
        (
            p: TreeNode.from(ints: [1, 2]),
            q: TreeNode.from(ints: [1, nil, 3]),
            expected: false
        ),
        (
            p: TreeNode.from(ints: [1, 2, 1]),
            q: TreeNode.from(ints: [1, 1, 2]),
            expected: false
        )
    ]

    func testInvertTree() {
        for (p, q, expected) in testCases {
            XCTAssertEqual(isSameTree(p, q), expected)
        }
    }
}
