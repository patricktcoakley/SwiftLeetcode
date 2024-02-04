func romanToInt(_ s: String) -> Int {
    guard !s.isEmpty else { return 0 }
    let n = s.count
    var result = match(s.last)
    for i in (0 ..< n - 1).reversed() {
        let curr = s[s.index(s.startIndex, offsetBy: i)]
        let prev = s[s.index(s.startIndex, offsetBy: i + 1)]
        if match(curr) < match(prev) {
            result -= match(curr)
        } else {
            result += match(curr)
        }
    }

    return result

    func match(_ c: Character?) -> Int {
        switch c {
        case "I": return 1
        case "V": return 5
        case "X": return 10
        case "L": return 50
        case "C": return 100
        case "D": return 500
        case "M": return 1000
        default: return 0
        }
    }
}
