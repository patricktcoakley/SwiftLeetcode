func coinChange(_ coins: [Int], _ amount: Int) -> Int {
  guard amount > 0 else { return 0 }
  guard !coins.isEmpty else { return -1 }

  var dp = Array(repeating: amount + 1, count: amount + 1)
  dp[0] = 0

  for coinAmount in 1 ... amount {
    for coin in coins {
      if coin <= coinAmount {
        dp[coinAmount] = min(dp[coinAmount], dp[coinAmount - coin] + 1)
      }
    }
  }

  return dp[amount] > amount ? -1 : dp[amount]
}
