class ListNode: Equatable {
  var val: Int
  var next: ListNode?

  init(_ val: Int = 0, _ next: ListNode? = nil) {
    self.val = val
    self.next = next
  }

  static func == (lhs: ListNode, rhs: ListNode) -> Bool {
    return lhs.val == rhs.val && lhs.next == rhs.next
  }
}
