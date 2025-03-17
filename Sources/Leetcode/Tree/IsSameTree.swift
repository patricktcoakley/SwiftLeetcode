func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
  switch (p, q) {
  case (nil, nil):
    true
  case (_, nil), (nil, _):
    false
  case let (p?, q?):
    p.val == q.val && isSameTree(p.left, q.left) && isSameTree(p.right, q.right)
  }
}
