func exist(_ board: [[Character]], _ word: String) -> Bool {
  let m = board.count, n = board[0].count
  let offsets = [(1, 0), (-1, 0), (0, 1), (0, -1)]
  var visited = Array(repeating: Array(repeating: false, count: n), count: m)

  for i in 0..<m {
    for j in 0..<n {
      if dfs(row: i, col: j, index: word.startIndex) {
        return true
      }
    }
  }

  return false

  func dfs(row: Int, col: Int, index: String.Index) -> Bool {
    guard index != word.endIndex else { return true }
    guard (0..<m).contains(row), (0..<n).contains(col) else { return false }
    guard !visited[row][col], board[row][col] == word[index] else { return false }

    visited[row][col] = true

    defer { visited[row][col] = false }

    let nextIndex = word.index(after: index)

    for (rowOffset, colOffset) in offsets {
      if dfs(row: row + rowOffset, col: col + colOffset, index: nextIndex) {
        return true
      }
    }

    return false
  }
}
