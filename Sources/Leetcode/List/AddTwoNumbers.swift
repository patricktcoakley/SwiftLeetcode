func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    let l3 = ListNode()
    var curr = l3
    var carry = 0
    var l1 = l1
    var l2 = l2

    while l1 != nil || l2 != nil {
        var total = carry
        if let l1 = l1 {
            total += l1.val
        }

        if let l2 = l2 {
            total += l2.val
        }

        carry = total / 10
        curr.next = ListNode(total % 10)
        curr = curr.next!

        l1 = l1?.next
        l2 = l2?.next
    }

    if carry > 0 {
        curr.next = ListNode(carry)
    }

    return l3.next
}
