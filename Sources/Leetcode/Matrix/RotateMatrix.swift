func rotateMatrix(_ matrix: inout [[Int]]) {
  let n = matrix.count
  for i in 0 ..< n {
    for j in i ..< n {
      (matrix[i][j], matrix[j][i]) = (matrix[j][i], matrix[i][j])
    }
  }

  for i in 0 ..< n {
    for row in 0 ..< n {
      matrix[row].reverse()
    }
  }
}
