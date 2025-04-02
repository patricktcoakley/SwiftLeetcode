func removeDuplicates(_ nums: inout [Int]) -> Int {
  var left = 0

  for right in 1 ..< nums.count {
    if nums[left] != nums[right] {
      nums[left + 1] = nums[right]
      left += 1
    }
  }

  return left + 1
}
