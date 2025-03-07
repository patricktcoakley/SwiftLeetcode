func isBalanced(_ root: TreeNode?) -> Bool {
  guard let root = root else { return true }

  let leftDepth = maxDepth(root.left)
  let rightDepth = maxDepth(root.right)
  if abs(leftDepth - rightDepth) > 1 {
    return false
  }

  return isBalanced(root.left) && isBalanced(root.right)
}
