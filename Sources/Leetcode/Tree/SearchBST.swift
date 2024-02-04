func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
    guard let root else { return nil }

    if root.val < val {
        return searchBST(root.right, val)
    }

    if root.val > val {
        return searchBST(root.left, val)
    }

    return root
}
