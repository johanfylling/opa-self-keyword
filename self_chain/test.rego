# METADATA
# title: My Test Package
# authors: 
# - John Doe <john@example.com>
# organizations:
# - Acme Corp.
package self_chain.test

import future.keywords.in
import data.self_chain.self

# METADATA
# scope: document
# description: All my p rules

# METADATA
# title: My P Rule
# authors: 
# - Jane Doe <jane@example.com>
# organizations:
# - Wayne Enterprises
p {
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
}

# METADATA
# title: My Other P Rule
p {
    some m in self.metadata

    # Annotations can be looked up by path
    m.path == ["self_flat_tree", "test", "p"]
    annotations := m.annotations
    annotations.scope == "rule"

    # How do we differentiate between multiple rules with the same path?
    annotations.title == "My P2 Rule"
}

# We can lookup annotations of any other node in the graph
#
# METADATA
# title: My Q Rule
q {
    some m in self.metadata
    m.path == ["self_flat_tree", "test", "p"]
    m.annotations.title == "My P Rule"
}

# METADATA
# scope: document
# organizations:
# - Tyrell Corp.
# - Soylent Corp.

# It's possible to manually inherit and merge list annotations
#
# METADATA
# organizations:
# - Soylent Corp.
# - Lex Corp.
r {
    organizations := { org | 
        m = self.metadata[_]
        # Production code would be: path := array.concat(self.package_, [self.name])
        path := array.concat(self.package_, ["r"])
        # the metadata is somewhere on the path of this rule
        array.slice(path, 0, count(m.path)) == m.path
        org := m.annotations.organizations[_]
    }

    organizations == {
        "Acme Corp.",
        "Lex Corp",
        "Soylent Corp",
        "Tyrell Corp."
    }
}

 # It's possible to inherit annotations from the closest parent node in the tree
s {
    # We guarantee that the flattened metadata tree is sorted by path
    titles := [ t |
        m = self.metadata[_]
        # Production code would be: path := array.concat(self.package_, [self.name])
        path := array.concat(self.package_, ["s"])
        # the metadata is somewhere on the path of this rule
        array.slice(path, 0, count(m.path)) == m.path
        t = m.annotations.title
    ]
    title := titles[count(titles)-1]

    title == "My Test Package"
}