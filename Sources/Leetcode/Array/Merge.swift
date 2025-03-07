func merge(_ intervals: [[Int]]) -> [[Int]] {
  guard !intervals.isEmpty else { return [] }

  let sortedIntervals = intervals.sorted { $0[0] < $1[0] }
  var merged = [sortedIntervals[0]]

  for interval in sortedIntervals {
    if let last = merged.last, last[1] >= interval[0] {
      merged[merged.count - 1][1] = max(last[1], interval[1])
    } else {
      merged.append(interval)
    }
  }

  return merged
}
