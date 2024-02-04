@testable import Leetcode
import XCTest

final class InvertTreeTests: XCTestCase {
    let testCases = [
        (
            root: TreeNode.from(ints: [4, 2, 7, 1, 3, 6, 9]),
            expected: TreeNode.from(ints: [4, 7, 2, 9, 6, 3, 1])
        ),
        (
            root: TreeNode.from(ints: [2, 1, 3]),
            expected: TreeNode.from(ints: [2, 3, 1])
        ),
        (
            root: TreeNode.from(ints: []),
            expected: TreeNode.from(ints: [])
        ),
    ]

    func testInvertTree() {
        for (root, expected) in testCases {
            XCTAssertEqual(invertTree(root), expected)
        }
    }
}
