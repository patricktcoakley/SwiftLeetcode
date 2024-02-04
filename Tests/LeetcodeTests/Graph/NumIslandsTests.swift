@testable import Leetcode
import XCTest

final class NumIslandsTests: XCTestCase {
    let testCases = [
        (
            grid: [
                ["1", "1", "1", "1", "0"],
                ["1", "1", "0", "1", "0"],
                ["1", "1", "0", "0", "0"],
                ["0", "0", "0", "0", "0"],
            ] as [[Character]],
            expected: 1),
        (
            grid: [
                ["1", "1", "0", "0", "0"],
                ["1", "1", "0", "0", "0"],
                ["0", "0", "1", "0", "0"],
                ["0", "0", "0", "1", "1"],
            ] as [[Character]],
            expected: 3),
    ]

    func testNumIslands() {
        for (grid, expected) in testCases {
            XCTAssertEqual(numIslands(grid), expected)
        }
    }
}
