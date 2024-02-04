func rotate(_ nums: inout [Int], _ k: Int) {
    let n = nums.count
    let k = k % n

    reverse(&nums, left: 0, right: n-1)
    reverse(&nums, left: 0, right: k-1)
    reverse(&nums, left: k, right: n-1)

    func reverse(_ nums: inout [Int], left: Int, right: Int) {
        var (left, right) = (left, right)
        while left < right {
            (nums[left], nums[right]) = (nums[right], nums[left])
            left += 1
            right -= 1
        }
    }
}
