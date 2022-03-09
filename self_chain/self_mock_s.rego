package self_chain.self_s

package_ := ["self_chain", "test"]
name := "s"

# metadata chain ordered from closest to farthest
metadata := [
    {
        "path": [
            "self_chain",
            "test",
            "s"
        ],
        "annotations": null,
    },
    {
        "path": [
            "self_chain",
            "test",
            "s"
        ],
        "annotations": {
            "scope": "document",
            "description": "All my s rules",
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
