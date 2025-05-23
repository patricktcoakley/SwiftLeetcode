func letterCombinations(_ digits: String) -> [String] {
  guard !digits.isEmpty else { return [] }

  let phoneMap: [Character: String] = [
    "2": "abc",
    "3": "def",
    "4": "ghi",
    "5": "jkl",
    "6": "mno",
    "7": "pqrs",
    "8": "tuv",
    "9": "wxyz",
  ]

  let digitsArray = Array(digits)
  var combinations: [String] = []
  var current: [Character] = []

  func backtrack(_ index: Int) {
    if index == digitsArray.count {
      combinations.append(String(current))
      return
    }

    guard let letters = phoneMap[digitsArray[index]] else { return }

    for letter in letters {
      current.append(letter)
      backtrack(index + 1)
      current.removeLast()
    }
  }

  backtrack(0)
  return combinations
}
