package self_chain.self_r

package_ := ["self_chain", "test"]
name := "r"

# metadata chain ordered from closest to farthest
metadata := [
    {
        "path": [
            "self_chain",
            "test",
            "r"
        ],
        "annotations": {
            "scope": "rule",
            "organizations": [
                "Soylent Corp.",
                "Lex Corp.",
            ],
        },
    },
    {
        "path": [
            "self_chain",
            "test",
            "r"
        ],
        "annotations": {
            "scope": "document",
            "organizations": [
                "Tyrell Corp.",
                "Soylent Corp.",
            ],
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
