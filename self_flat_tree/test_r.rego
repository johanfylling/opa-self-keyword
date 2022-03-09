# METADATA
# title: My Test Package
# authors: 
# - John Doe <john@example.com>
# organizations:
# - Acme Corp.
package self_flat_tree.test

import future.keywords.in
import data.self_flat_tree.self_r as self

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
r[msg] {
    organizations := { org | 
        m = self.metadata[_]
        # the metadata is somewhere on the path of this rule
        path := array.concat(self.package_, [self.name])
        array.slice(path, 0, count(m.path)) == m.path
        org := m.annotations.organizations[_]
    }

    organizations == {
        "Acme Corp.",
        "Lex Corp",
        "Soylent Corp",
        "Tyrell Corp."
    }

    msg = "r1"
}

 # It's possible to inherit annotations from the closest parent node in the tree
r[msg] {
    # We guarantee that the flattened metadata tree is sorted by path
    titles := [ t |
        m = self.metadata[_]
        # the metadata is somewhere on the path of this rule
        path := array.concat(self.package_, [self.name])
        array.slice(path, 0, count(m.path)) == m.path
        t = m.annotations.title
    ]
    title := titles[count(titles)-1]

    title == "My Test Package"

    msg = "r2"
}