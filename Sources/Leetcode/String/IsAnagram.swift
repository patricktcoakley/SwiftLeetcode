func isAnagram(_ s: String, _ t: String) -> Bool {
    guard s.count == t.count else { return false }
    
    var charCount: [Character: Int] = [:]
    
    for (lhs, rhs) in zip(s, t) {
        charCount[lhs, default: 0] += 1
        charCount[rhs, default: 0] -= 1
    }
    
    return charCount.values.allSatisfy { $0 == 0 }
}
