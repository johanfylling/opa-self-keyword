# METADATA
# title: My Test Package
# authors: 
# - John Doe <john@example.com>
# organizations:
# - Acme Corp.
package self_chain.test

import future.keywords.in
import data.self_chain.self_p1 as self

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
    self.name == "p"
    
    # metadata is a chain ordered from closest to farthest. First element always refers to the active rule.
    m := self.metadata[0]

    # Each metadata entry contains the path to where its declaration
    m.path == ["self_chain", "test", "p"]
    annotations := m.annotations
    annotations.scope == "rule"
    annotations.title == "My P Rule"
    count(annotations.authors) == 1
    annotations.authors[0] == {"name": "Jane Doe", "email": "jane@example.com"}

    # We can access the document scope annotation in the chain
    mDoc = self.metadata[1]
    mDoc.path == ["self_chain", "test", "p"]
    mDoc.annotations.description == "All my p rules"

    # We can access the package scope annotation
    mPkg = self.metadata[2]
    mPkg.path == ["self_chain", "test"]
    mPkg.annotations.title == "My Test Package"

    # We can access any subpackages scope annotation down the chain
    mSubPkg = self.metadata[3]
    mSubPkg.path == ["self_chain"]
    mSubPkg.annotations.title == "Foo Bar"

    msg = "p1"
}