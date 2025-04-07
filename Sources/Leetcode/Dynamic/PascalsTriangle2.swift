func getTriangleRow(_ rowIndex: Int) -> [Int] {
  guard rowIndex > 0 else { return [1] }

  var curr = [1]

  for row in 1 ... rowIndex {
    var next = Array(repeating: 1, count: row + 1)
    for element in 1 ..< row {
      next[element] = curr[element - 1] + curr[element]
    }

    curr = next
  }

  return curr
}
