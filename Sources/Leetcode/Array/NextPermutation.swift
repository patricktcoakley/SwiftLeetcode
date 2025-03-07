func nextPermutation(_ nums: inout [Int]) {
  let n = nums.count
  guard n >= 2 else { return }
  var left = n - 2

  while left >= 0, nums[left + 1] <= nums[left] {
    left -= 1
  }

  if left >= 0 {
    var right = n - 1
    while nums[right] <= nums[left] {
      right -= 1
    }
    nums.swapAt(left, right)
  }

  nums[(left + 1)...].reverse()
}
