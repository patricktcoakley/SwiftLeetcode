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
        self.neighbors = []
    }
}

func cloneGraph(_ node: GraphNode?) -> GraphNode? {
    var clones = [GraphNode?: GraphNode?]()

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
