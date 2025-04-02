func firstUniqChar(_ s: String) -> Int {
  var frequency: [Character: Int] = [:]

  for char in s {
    frequency[char, default: 0] += 1
  }

  for (i, char) in s.enumerated() {
    if frequency[char] == 1 {
      return i
    }
  }

  return -1
}
