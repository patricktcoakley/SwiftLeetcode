func longestCommonPrefix(_ strs: [String]) -> String {
  guard !strs.isEmpty else { return "" }

  var longestPrefix = strs[0]

  for str in strs[1...] {
    while !str.hasPrefix(longestPrefix) {
      longestPrefix.removeLast()
    }
  }

  return longestPrefix
}
