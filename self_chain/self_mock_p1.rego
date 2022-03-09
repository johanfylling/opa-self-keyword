package self_chain.self_p1

package_ := ["self_chain", "test"]
name := "p"

# metadata chain ordered from closest to farthest
metadata := [
    {
        "path": [
            "self_chain",
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
            "self_chain",
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
            "self_chain",
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
            "self_chain",
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
]
