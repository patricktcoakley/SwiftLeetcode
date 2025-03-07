func lengthOfLongestSubstring(_ s: String) -> Int {
  var chars: [Character: Int] = [:]
  var longest = 0
  var start = 0

  for (index, char) in s.enumerated() {
    if let val = chars[char], val > start {
      start = val
    }

    longest = max(longest, index - start + 1)
    chars[char] = index + 1
  }

  return longest
}
