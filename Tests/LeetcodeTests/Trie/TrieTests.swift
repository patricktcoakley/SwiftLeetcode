@testable import Leetcode
import XCTest

final class TrieTests: XCTestCase {
    func testTrie() {
        let trie = Trie()
        trie.insert("apple")

        XCTAssertTrue(trie.search("apple"))
        XCTAssertFalse(trie.search("app"))
        XCTAssertTrue(trie.startsWith("app"))
        trie.insert("app")
        XCTAssertTrue(trie.search("app"))
    }
}
