func isPalindrome(_ s: String) -> Bool {
  let chars = Array(s.lowercased().filter { $0.isLetter || $0.isNumber })
  var (left, right) = (0, chars.count - 1)

  while left <= right {
    if chars[left] != chars[right] {
      return false
    }

    left += 1
    right -= 1
  }

  return true
}
