func moveZeroes(_ nums: inout [Int]) {
  var zeroIndex = 0

  for i in nums.indices where nums[i] != 0 {
    nums.swapAt(i, zeroIndex)
    zeroIndex += 1
  }
}
