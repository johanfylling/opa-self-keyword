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
r {
    organizations := { org | 
        org = self.metadata[_].annotations.organizations[_]
    }

    organizations == {
        "Acme Corp.",
        "Lex Corp.",
        "Soylent Corp.",
        "Tyrell Corp."
    }
}