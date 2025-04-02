func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
  guard let root else { return 0 }

  var stack: [TreeNode] = [root]
  var sum = 0

  while let top = stack.popLast() {
    if let left = top.left {
      if left.left == nil && left.right == nil {
        sum += left.val
      } else {
        stack.append(left)
      }
    }

    if let right = top.right {
      stack.append(right)
    }
  }

  return sum
}
