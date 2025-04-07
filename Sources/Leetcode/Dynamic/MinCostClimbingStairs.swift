func minCostClimbingStairs(_ cost: [Int]) -> Int {
  var prev = cost[0]
  var curr = cost[1]

  for i in 2 ..< cost.count {
    (prev, curr) = (curr, cost[i] + min(curr, prev))
  }
  return min(curr, prev)
}
