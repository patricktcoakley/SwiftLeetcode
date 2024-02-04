import Collections

public class TreeNode: Equatable {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?

    init() { self.val = 0; self.left = nil; self.right = nil }
    init(_ val: Int) { self.val = val; self.left = nil; self.right = nil }
    init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }

    static func from(ints nums:[Int?]) -> TreeNode? {
        guard let first = nums.first, let first else {
            return nil
        }

        let root = TreeNode(first)
        var queue = Deque<TreeNode>()
        queue.append(root)
        var index = 1

        while let top = queue.popFirst(), index < nums.count {
            if let leftVal = nums[index] {
                top.left = TreeNode(leftVal)
                queue.append(top.left!)
            }
            index += 1

            if index < nums.count, let rightVal = nums[index] {
                top.right = TreeNode(rightVal)
                queue.append(top.right!)
            }
            index += 1
        }

        return root
    }

    public static func == (lhs: TreeNode, rhs: TreeNode) -> Bool {
        return lhs.val == rhs.val && lhs.left == rhs.left && lhs.right == rhs.right
    }
}
