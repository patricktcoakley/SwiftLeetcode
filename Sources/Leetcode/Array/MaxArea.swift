func maxArea(_ height: [Int]) -> Int {
  var (left, right) = (0, height.count - 1)
  var maxArea = 0

  while left < right {
    let (leftVal, rightVal) = (height[left], height[right])
    maxArea = max(maxArea, min(leftVal, rightVal) * (right - left))
    if leftVal < rightVal {
      left += 1
    } else {
      right -= 1
    }
  }

  return maxArea
}
