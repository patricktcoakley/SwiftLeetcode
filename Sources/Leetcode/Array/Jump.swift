func jump(_ nums: [Int]) -> Int {
    guard !nums.isEmpty else { return 0 }
    var maximum = 0
    var count = 0
    var last = 0

    for (index, num) in nums.dropLast().enumerated() {
        maximum = max(maximum, index + num)

        if index == last {
            last = maximum
            count += 1
        }
    }

    return count
}
