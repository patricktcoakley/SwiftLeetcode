@testable import Leetcode
import XCTest

final class TreeNodeTests: XCTestCase {
    func testEmpty() {
        XCTAssertNil(TreeNode.from(ints: []))
    }

    func testSingle() {
        XCTAssertEqual(TreeNode(1), TreeNode.from(ints: [1]))
    }

    func testMultiple() {
        XCTAssertEqual(TreeNode(1, TreeNode(2), TreeNode(3)), TreeNode.from(ints: [1, 2, 3]))
    }

    func testMultipleWithNils() {
        let input = [3, 9, 20, nil, nil, 15, 7]
        let expected =
            TreeNode(3, TreeNode(9), TreeNode(20, TreeNode(15), TreeNode(7)))
        let result = TreeNode.from(ints: input)
        XCTAssertEqual(expected, result)
    }
}
