func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
    var station = 0
    var tank = 0
    var totalGas = 0

    for i in 0 ..< gas.count {
        let stationGas = gas[i] - cost[i]
        tank += stationGas
        totalGas += stationGas
        if tank < 0 {
            station = i + 1
            tank = 0
        }
    }

    return totalGas < 0 ? -1 : station
}
