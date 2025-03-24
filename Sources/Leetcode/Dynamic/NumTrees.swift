func numTrees(_ n: Int) -> Int {
  guard n > 1 else { return 1 }
  var dp = [Int](repeating: 0, count: n + 1)
  dp[0] = 1
  dp[1] = 1

  for i in 2...n {
    for j in 1...i {
      dp[i] += dp[j-1] * dp[i-j]
    }
  }

  return dp[n]
}
