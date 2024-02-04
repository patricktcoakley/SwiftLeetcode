func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
    guard let root else { return false }
    let targetSum = targetSum - root.val
    if root.left == nil && root.right == nil {
        return targetSum == 0
    }

    return hasPathSum(root.left, targetSum) || hasPathSum(root.right, targetSum)
}
