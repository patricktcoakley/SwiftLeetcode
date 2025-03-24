func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
  let chars1 = Array(text1)
  let chars2 = Array(text2)
  let m = chars1.count
  let n = chars2.count

  var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: n + 1), count: m + 1)

  for i in 1...m {
    for j in 1...n {
      if chars1[i-1] == chars2[j-1] {
        dp[i][j] = dp[i-1][j-1] + 1
      } else {
        dp[i][j] = max(dp[i-1][j], dp[i][j-1])
      }
    }
  }

  return dp[m][n]
}
