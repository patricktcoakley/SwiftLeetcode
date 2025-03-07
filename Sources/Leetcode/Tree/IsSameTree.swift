func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
  switch (p, q) {
  case (nil, nil):
    return true
  case (_, nil), (nil, _):
    return false
  case let (p?, q?):
    return p.val == q.val && isSameTree(p.left, q.left) && isSameTree(p.right, q.right)
  }
}
