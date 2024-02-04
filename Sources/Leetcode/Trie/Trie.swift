class Trie {
    class Node {
        var children: [Character: Node] = [:]
        var isTerminating = false
    }

    let root = Node()

    func insert(_ word: String) {
        var current = self.root

        for char in word {
            if current.children[char] == nil {
                current.children[char] = Node()
            }

            current = current.children[char]!
        }

        current.isTerminating = true
    }

    func search(_ word: String, isPrefix: Bool = false) -> Bool {
        var current = self.root

        for char in word {
            guard let child = current.children[char] else { return false }
            current = child
        }

        return isPrefix ? true : current.isTerminating
    }

    func startsWith(_ prefix: String) -> Bool {
        return self.search(prefix, isPrefix: true)
    }
}
