# METADATA
# title: My Test Package
# authors: 
# - John Doe <john@example.com>
# organizations:
# - Acme Corp.
package self_chain.test

import future.keywords.in
import data.self_chain.self_p2 as self

# METADATA
# scope: document
# description: All my p rules

# NOTE: This rule has the same path as p in test_p1.rego, but different annotations.
#
# METADATA
# title: My Other P Rule
p[msg] {
    self.name == "p"
    
    # metadata is a chain ordered from closest to farthest. First element always refers to the active rule.
    m := self.metadata[0]

    # Each metadata entry contains the path to where its declaration
    m.path == ["self_chain", "test", "p"]
    annotations := m.annotations
    annotations.scope == "rule"
    annotations.title == "My Other P Rule"

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

    msg = "p2"
}
