func generateTriangle(_ numRows: Int) -> [[Int]] {
  guard numRows > 0 else { return [] }

  var triangle = Array(repeating: [1], count: numRows)

  for row in 1..<numRows {
    var curr = Array(repeating: 1, count: row + 1)
    for element in 1..<row {
      curr[element] = triangle[row-1][element-1] + triangle[row-1][element]
    }
    triangle[row] = curr
  }
  return triangle
}
