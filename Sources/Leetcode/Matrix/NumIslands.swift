func numIslands(_ grid: [[Character]]) -> Int {
  let (rows, cols) = (0 ... grid.count - 1, 0 ... grid[0].count - 1)
  let offsets = [(1, 0), (-1, 0), (0, 1), (0, -1)]
  var count = 0
  var stack: [(row: Int, col: Int)] = []
  var grid = grid

  for row in rows {
    for col in cols where grid[row][col] == "1" {
      count += 1
      stack.append((row, col))
      grid[row][col] = "0"

      while let pos = stack.popLast() {
        for (rowOffset, colOffset) in offsets {
          let (newRow, newCol) = (pos.row + rowOffset, pos.col + colOffset)
          guard rows.contains(newRow),
                cols.contains(newCol),
                grid[newRow][newCol] == "1" else { continue }
          grid[newRow][newCol] = "0"
          stack.append((newRow, newCol))
        }
      }
    }
  }

  return count
}
