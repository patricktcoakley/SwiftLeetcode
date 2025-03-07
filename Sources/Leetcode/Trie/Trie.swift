class Trie {
  class Node {
    var children: [Character: Node] = [:]
    var isTerminating = false
  }

  let root = Node()

  func insert(_ word: String) {
    var current = root

    for char in word {
      current = current.children[char, default: Node()]
    }

    current.isTerminating = true
  }

  func search(_ word: String, isPrefix: Bool = false) -> Bool {
    var current = root

    for char in word {
      guard let child = current.children[char] else { return false }
      current = child
    }

    return isPrefix || current.isTerminating
  }

  func startsWith(_ prefix: String) -> Bool {
    search(prefix, isPrefix: true)
  }
}
