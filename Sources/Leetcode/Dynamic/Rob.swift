func rob(_ nums: [Int]) -> Int {
  var left = 0, right = 0

  for num in nums {
    (left, right) = (right, max(left + num, right))
  }

  return right
}
