func hasCycle(_ head: ListNode?) -> Bool {
    guard let head else { return false }
    var slow: ListNode? = head
    var fast: ListNode? = head.next

    while fast?.next != nil {
        if slow === fast {
            return true
        }

        slow = slow?.next
        fast = fast?.next?.next
    }

    return false
}
