func maxProfit(_ prices: [Int]) -> Int {
  var maxProfit = 0
  var lowestPrice = prices[0]

  for price in prices[1...] {
    lowestPrice = min(lowestPrice, price)
    maxProfit = max(maxProfit, price - lowestPrice)
  }

  return maxProfit
}
