func divideArray(_ nums: [Int]) -> Bool {
  var s = Set<Int>()

  for num in nums {
    if s.contains(num) {
      s.remove(num)
    } else {
      s.insert(num)
    }
  }

  return s.isEmpty
}
