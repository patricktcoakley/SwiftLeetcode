
class MyLinkedList {
  class Node {
    var value: Int
    var next: Node?

    init(value: Int, next: Node? = nil) {
      self.value = value
      self.next = next
    }
  }

  private(set) var count = 0
  private(set) var head: Node?
  private(set) var tail: Node?

  func get(_ index: Int) -> Int { getNode(index)?.value ?? -1 }

  func addAtHead(_ val: Int) {
    let newNode = Node(value: val, next: head)

    head = newNode

    if tail == nil {
      tail = newNode
    }

    count += 1
  }

  func addAtTail(_ val: Int) {
    let newNode = Node(value: val)

    if var tail {
      tail.next = newNode
    } else {
      head = newNode
    }

    tail = newNode
    count += 1
  }

  func addAtIndex(_ index: Int, _ val: Int) {
    guard (0 ... count).contains(index) else { return }

    if index == count {
      addAtTail(val)
      return
    }

    if index == 0 {
      addAtHead(val)
      return
    }

    var nodeBefore = getNode(index - 1)
    let next = nodeBefore?.next
    nodeBefore?.next = Node(value: val, next: next)
    count += 1
  }

  func deleteAtIndex(_ index: Int) {
    guard index >= 0, index < count else { return }
    defer { count -= 1 }

    if index == 0 {
      head = head?.next
      if head == nil {
        tail = nil
      }
      return
    }

    let nodeBefore = getNode(index - 1)
    nodeBefore?.next = nodeBefore?.next?.next
    if index == count - 1 {
      tail = nodeBefore
    }
  }

  private func getNode(_ index: Int) -> Node? {
    guard (0..<count).contains(index) else { return nil }

    return (0..<index).reduce(head) { node, _ in node?.next }
  }
}
