func isValidSudoku(_ board: [[Character]]) -> Bool {
  var rows = Array(repeating: Set<Character>(minimumCapacity: 9), count: 9)
  var cols = Array(repeating: Set<Character>(minimumCapacity: 9), count: 9)
  var boxes = Array(repeating: Set<Character>(minimumCapacity: 9), count: 9)

  for row in 0 ..< 9 {
    for col in 0 ..< 9 {
      guard case let value = board[row][col], value != "." else { continue }

      let box = (row / 3) * 3 + col / 3

      guard
        rows[row].insert(value).inserted,
        cols[col].insert(value).inserted,
        boxes[box].insert(value).inserted
      else {
        return false
      }
    }
  }

  return true
}
