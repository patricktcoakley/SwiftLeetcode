func flatten(_ root: TreeNode?) {
  guard let root else { return }

  var stack: [TreeNode] = [root]

  while let top = stack.popLast() {
    if let right = top.right {
      stack.append(right)
    }

    if let left = top.left {
      stack.append(left)
    }

    if !stack.isEmpty {
      top.right = stack.last
    }

    top.left = nil
  }
}
