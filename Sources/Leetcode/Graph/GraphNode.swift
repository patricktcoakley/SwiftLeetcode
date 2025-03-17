class GraphNode: Hashable {
  static func == (lhs: GraphNode, rhs: GraphNode) -> Bool {
    return lhs.val == rhs.val && lhs.neighbors == rhs.neighbors
  }

  func hash(into hasher: inout Hasher) {
    hasher.combine(val)
    hasher.combine(neighbors)
  }

  public var val: Int
  public var neighbors: [GraphNode?]
  public init(_ val: Int) {
    self.val = val
    neighbors = []
  }
}
