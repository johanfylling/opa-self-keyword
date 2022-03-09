# METADATA
# title: My Test Package
# authors: 
# - John Doe <john@example.com>
# organizations:
# - Acme Corp.
package self_flat_tree.test

import future.keywords.in
import data.self_flat_tree.self_p as self

# METADATA
# scope: document
# description: All my p rules

# METADATA
# title: My P Rule
# authors: 
# - Jane Doe <jane@example.com>
# organizations:
# - Wayne Enterprises
p[msg] {
    self.package_ == ["self_flat_tree", "test"]
    self.name == "p"
    
    # metadata is a flattened tree
    some m in self.metadata

    # Annotations can be looked up by path
    m.path == ["self_flat_tree", "test", "p"]
    annotations := m.annotations
    annotations.scope == "rule"
    annotations.title == "My P Rule"
    count(annotations.authors) == 1
    annotations.authors[0] == {"name": "Jane Doe", "email": "jane@example.com"}

    msg = "p1"
}

# METADATA
# title: My Other P Rule
p[msg] {
    some m in self.metadata

    # Annotations can be looked up by path
    m.path == ["self_flat_tree", "test", "p"]
    annotations := m.annotations
    annotations.scope == "rule"

    # How do we differentiate between multiple rules with the same path?
    annotations.title == "My P2 Rule"

    msg = "p2"
}

# METADATA
# title: My Q Rule
q {
    some m in self.metadata

    # We can lookup annotations of any other node in the graph
    m.path == ["self_flat_tree", "test", "p"]
    m.annotations.title == "My P Rule"
}