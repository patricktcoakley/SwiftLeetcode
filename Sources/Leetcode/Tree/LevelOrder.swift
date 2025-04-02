import Collections

func levelOrder(_ root: TreeNode?) -> [[Int]] {
  guard let root else { return [] }

  var q = Deque<TreeNode>()
  var out: [[Int]] = [[root.val]]
  q.append(root)

  while !q.isEmpty {
    var curr: [Int] = []

    for level in 0 ..< q.count {
      guard let top = q.popFirst() else { break }
      
      if let left = top.left {
        curr.append(left.val)
        q.append(left)
      }

      if let right = top.right {
        curr.append(right.val)
        q.append(right)
      }
    }

    if !curr.isEmpty {
      out.append(curr)
    }
  }

  return out
}
