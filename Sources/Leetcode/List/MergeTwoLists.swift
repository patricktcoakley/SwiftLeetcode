func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
  var list1 = list1
  var list2 = list2

  let list3 = ListNode()
  var curr: ListNode? = list3

  while let node1 = list1, let node2 = list2 {
    if node1.val < node2.val {
      curr?.next = node1
      list1 = node1.next
    } else {
      curr?.next = node2
      list2 = node2.next
    }
    curr = curr?.next
  }

  if let list1 {
    curr?.next = list1
  }

  if let list2 {
    curr?.next = list2
  }

  return list3.next
}
