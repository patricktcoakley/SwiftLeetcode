func isNumPalindrome(_ x: Int) -> Bool {
  guard x >= 0 else { return false }

  var num = x
  var reversed = 0

  while num > 0 {
    let rhs = num % 10
    reversed = reversed * 10 + rhs
    num /= 10
  }

  return reversed == x
}
