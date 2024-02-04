func canJump(_ nums: [Int]) -> Bool {
    var position = 0

    for num in nums {
        guard position >= 0 else { return false }
        position = max(position, num) - 1
    }

    return true
}
