func lengthOfLastWord(_ s: String) -> Int {
    var lastLength = 0
    guard !s.isEmpty else { return lastLength }

    for c in s.reversed() {
        if !c.isLetter && lastLength > 0 {
            break
        }

        if c.isLetter {
            lastLength += 1
        }
    }

    return lastLength
}
