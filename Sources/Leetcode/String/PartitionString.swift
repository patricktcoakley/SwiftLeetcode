func partitionString(_ s: String) -> Int {
  var chars = Set<Character>()
  var partitions = 1

  for char in s {
    if !chars.insert(char).inserted {
      partitions += 1
      chars = [char]
    }
  }

  return partitions
}
