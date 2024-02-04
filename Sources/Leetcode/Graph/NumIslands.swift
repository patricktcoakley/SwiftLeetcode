func numIslands(_ grid: [[Character]]) -> Int {
    var grid = grid
    let (rows, cols) = (grid.count - 1, grid[0].count - 1)
    var count = 0

    for row in 0 ... rows {
        for col in 0 ... cols {
            if grid[row][col] == "1" {
                count += 1
                floodFill(row, col)
            }
        }
    }

    return count

    func floodFill(_ row: Int, _ col: Int) {
        guard (0 ... rows).contains(row), (0 ... cols).contains(col), grid[row][col] == "1" else { return }

        grid[row][col] = "0"

        for (rowOffset, colOffset) in [(1, 0), (-1, 0), (0, 1), (0, -1)] {
            floodFill(row + rowOffset, col + colOffset)
        }
    }
}
