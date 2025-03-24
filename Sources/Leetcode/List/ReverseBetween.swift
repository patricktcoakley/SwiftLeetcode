func reverseBetween(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {
  guard let head, left <= right else { return head }

  var newHead = ListNode()
  newHead.next = head
  var prev: ListNode? = newHead

  for i in 0 ..< left - 1 {
    prev = prev?.next
  }

  var curr = prev?.next

  for i in 0 ..< (right - left) {
    let next = curr?.next
    curr?.next = next?.next
    next?.next = prev?.next
    prev?.next = next
  }

  return newHead.next
}
