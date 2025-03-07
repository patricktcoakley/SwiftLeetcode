func isValid(_ s: String) -> Bool {
  let d: [Character: Character] = [
    ")": "(",
    "]": "[",
    "}": "{",
  ]

  var chars = [Character]()

  for c in s {
    switch c {
    case "(", "[", "{":
      chars.append(c)
    default:
      guard chars.popLast() == d[c] else { return false }
    }
  }

  return chars.isEmpty
}
