func isValid(_ s: String) -> Bool {
  let d: [Character: Character] = [
    ")": "(",
    "]": "[",
    "}": "{",
  ]

  var stack: [Character] = []

  for c in s {
    switch c {
    case "(", "[", "{":
      stack.append(c)
    default:
      guard stack.popLast() == d[c] else { return false }
    }
  }

  return stack.isEmpty
}
