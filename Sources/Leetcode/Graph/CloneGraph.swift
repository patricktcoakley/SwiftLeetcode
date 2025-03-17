func cloneGraph(_ node: GraphNode?) -> GraphNode? {
  var clones: [GraphNode?: GraphNode?] = [:]

  return cloneNode(node)

  func cloneNode(_ node: GraphNode?) -> GraphNode? {
    guard let node else { return nil }
    if let clone = clones[node] {
      return clone
    }

    let clone = GraphNode(node.val)
    clones[node] = clone

    for neighbor in node.neighbors {
      clone.neighbors.append(cloneNode(neighbor))
    }

    return clone
  }
}
