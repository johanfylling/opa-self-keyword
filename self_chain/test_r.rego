# METADATA
# title: My Test Package
# authors: 
# - John Doe <john@example.com>
# organizations:
# - Acme Corp.
package self_chain.test

import future.keywords.in
import data.self_chain.self_r as self

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
        org = self.metadata[_].annotations.organizations[_]
    }

    organizations == {
        "Acme Corp.",
        "Lex Corp.",
        "Soylent Corp.",
        "Tyrell Corp."
    }

    msg := "complete merge"
}

# It's possible to manually inherit and merge list annotations with specific scopes
#
# METADATA
# organizations:
# - Soylent Corp.
# - Lex Corp.
r[msg] {
    organizations := { org | 
        a := self.metadata[_].annotations
        a.scope in ["rule", "document"]
        org = a.organizations[_]
    }

    organizations == {
        "Lex Corp.",
        "Soylent Corp.",
        "Tyrell Corp."
    }

    msg := "scoped merge"
}