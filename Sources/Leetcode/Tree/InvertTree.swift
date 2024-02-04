func invertTree(_ root: TreeNode?) -> TreeNode? {
    guard let root else { return nil }
    
    let (left,right) = (invertTree(root.right), invertTree(root.left))
    root.left = left
    root.right = right
    
    return root
}
