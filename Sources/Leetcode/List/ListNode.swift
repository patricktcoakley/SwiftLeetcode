class ListNode: Equatable {
  var val: Int
  var next: ListNode?

  init(_ val: Int = 0, _ next: ListNode? = nil) {
    self.val = val
    self.next = next
  }

  static func from(list vals: [Int?]) -> ListNode? {
    if vals.isEmpty {
      return nil
    }

    let head = ListNode()
    var curr = head

    for val in vals {
      guard let val else { continue }
      curr.next = ListNode(val)
      curr = curr.next!
    }

    return head.next
  }

  static func == (lhs: ListNode, rhs: ListNode) -> Bool {
    return lhs.val == rhs.val && lhs.next == rhs.next
  }
}
