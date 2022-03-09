# OPA 'self' keyword

This repo contains a series of examples exploring different versions of the future ['self'](https://github.com/open-policy-agent/opa/issues/4396) keyword in Rego.

Three scenarios are explored:

1. Metadata is not inherited, and a rule can only access annotations directly attached to it: `no_inheritance`
2. The `self.metadata` field returns a complete flattened tree of all metadata in the compiled module(s): `self_flat_tree`
3. The `self.metadata` field returns an array, listing all annotations from the active rule to the root package: `self_chain`