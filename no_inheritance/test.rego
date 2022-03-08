# METADATA
# title: My Test Package
# authors: 
# - John Doe <john@example.com>
# organizations:
# - Acme Corp.
package no_inheritance.test

import data.no_inheritance.self

# METADATA
# scope: document
# description: All my p rules

# METADATA
# title: My P Rule
# authors: 
# - jane Doe <jane@example.com>
p {
    self.package_ == ["no_inheritance", "test"]
    self.name == "p"
    
    self.metadata.title == "My P Rule"
    self.metadata.authors == [{"name": "Jane Doe", "email": "jane@example.com"}]
    self.metadata.description == null
    self.metadata.organizations == null
}