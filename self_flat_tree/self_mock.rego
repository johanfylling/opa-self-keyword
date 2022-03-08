package self_flat_tree.self

package_ := ["self_flat_tree", "test"]
name := "p"

metadata := [
    {
        "path": [
            "self_flat_tree",
        ],
        "annotations": {
            "scope": "subpackages",
            "title": "Foo Bar",
            "custom": {
                "a": "foo",
                "b": "bar",
            },
        },
    },
    {
        "path": [
            "self_flat_tree",
            "test",
        ],
        "annotations": {
            "scope": "package",
            "title": "My Test Package",
            "authors": [
                {
                    "name": "John Doe",
                    "email": "john@example.com",
                },
            ],
            "organizations": [
                "Acme Corp.",
            ],
        },
    },
    {
        "path": [
            "self_flat_tree",
            "test",
            "p"
        ],
        "annotations": {
            "scope": "document",
            "description": "All my p rules",
        },
    },
    {
        "path": [
            "self_flat_tree",
            "test",
            "p"
        ],
        "annotations": {
            "scope": "rule",
            "title": "My P Rule",
            "authors": [
                {
                    "name": "Jane Doe",
                    "email": "jane@example.com",
                },
            ],
            "organizations": [
                "Wayne Enterprises",
            ],
        },
    },
    {
        "path": [
            "self_flat_tree",
            "test",
            "p"
        ],
        "annotations": {
            "scope": "rule",
            "title": "My P2 Rule",
        },
    },
    {
        "path": [
            "self_flat_tree",
            "test",
            "q"
        ],
        "annotations": {
            "scope": "rule",
            "title": "My Q Rule",
        },
    },
    {
        "path": [
            "self_flat_tree",
            "test",
            "r"
        ],
        "annotations": {
            "scope": "document",
            "organizations": [
                "Tyrell Corp.",
                "Soylent Corp",
            ],
        },
    },
    {
        "path": [
            "self_flat_tree",
            "test",
            "r"
        ],
        "annotations": {
            "scope": "document",
            "organizations": [
                "Soylent Corp",
                "Lex Corp",
            ],
        },
    },
]
