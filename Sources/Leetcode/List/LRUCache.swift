final class LRUCache {
  final class ListNode {
    var key: Int
    var value: Int
    var next: ListNode?
    var prev: ListNode?

    init(_ key: Int = 0, _ value: Int = 0) {
      self.key = key
      self.value = value
    }
  }

  private let capacity: Int
  private var head = ListNode()
  private var tail = ListNode()
  private var cache: [Int: ListNode] = [:]

  init(_ capacity: Int) {
    self.capacity = capacity
    head.next = tail
    tail.prev = head
  }

  func get(_ key: Int) -> Int {
    guard let node = cache[key] else { return -1 }
    moveToHead(node)
    return node.value
  }

  func put(_ key: Int, _ value: Int) {
    if let node = cache[key] {
      node.value = value
      return moveToHead(node)
    }

    let newNode = ListNode(key, value)
    cache[key] = newNode
    addToHead(newNode)

    if cache.count > capacity, let tailNode = removeTail() {
      cache.removeValue(forKey: tailNode.key)
    }
  }

  private func addToHead(_ node: ListNode) {
    node.next = head.next
    node.prev = head
    head.next?.prev = node
    head.next = node
  }

  private func removeNode(_ node: ListNode) {
    node.prev?.next = node.next
    node.next?.prev = node.prev
  }

  private func moveToHead(_ node: ListNode) {
    removeNode(node)
    addToHead(node)
  }

  private func removeTail() -> ListNode? {
    guard let node = tail.prev, node !== head else { return nil }
    removeNode(node)
    return node
  }
}
