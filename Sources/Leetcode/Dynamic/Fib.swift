func fib(_ n: Int) -> Int {
  guard n > 1 else { return n }

  var prev = 1, curr = 1

  for _ in 2 ... n {
    (prev, curr) = (curr, prev + curr)
  }

  return prev
}
