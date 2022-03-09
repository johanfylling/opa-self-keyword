# METADATA
# title: My Test Package
# authors: 
# - John Doe <john@example.com>
# organizations:
# - Acme Corp.
package self_chain.test

import future.keywords.in
import data.self_chain.self_s as self

# METADATA
# scope: document
# description: All my s rules

# It's possible to inherit annotations from the closest parent node in the tree
s[msg] {
    titles := [ t |
        t = self.metadata[_].annotations.title
    ]
    # the metadata chain is sorted closest->fartest
    title := titles[0]

    title == "My Test Package"

    msg = "s1"
}

# Unannotated rules are still present as the first element in the metadata chain
s[msg] {
    m := self.metadata[0]
    
    m.path == ["self_chain", "test", "s"]
    m["annotations"] == null # should missing rule annotations be represented by 'undefined', 'null' or '{}'?

    msg = "s2"
}