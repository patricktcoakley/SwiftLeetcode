func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var d = [Int: Int]()
    for (i, num) in nums.enumerated() {
        if let val = d[target - num] {
            return [val, i]
        }

        d[num] = i
    }

    return []
}
