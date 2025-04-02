import Collections

func minDepth(_ root: TreeNode?) -> Int {
  guard let root else { return 0 }

  var levels = 0
  var q = Deque<TreeNode>()
  q.append(root)

  while !q.isEmpty {
    levels += 1

    for _ in 0 ..< q.count {
      let node = q.popFirst()!
      if node.left == nil && node.right == nil {
        return levels
      }

      if let left = node.left {
        q.append(left)
      }

      if let right = node.right {
        q.append(right)
      }
    }
  }

  return levels
}
