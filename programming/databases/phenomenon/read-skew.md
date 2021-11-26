# Read skew
Occurs when there are integrity constaints between two or more tables. While one transaction retrieves rows from these tables separately, another concurrent transaction might update them. Therefore the first transaction might have rows from one table before the update and some rows after it.

```mermaid
sequenceDiagram
  participant Alice
  participant Database
  participant Bob
  Note right of Database: post (id: 1, title: "Transactions")
  Note left of Database: post_details (id: 1, updated_by: "Alice")
  Alice->>Database: BEGIN TRANSACTION
  Bob->>Database: BEGIN TRANSACTION
  Alice->>Database: SELECT * FROM post WHERE id = 1
  Note right of Alice: post (id: 1, title: "Transactions")
  Bob->>Database: UPDATE post SET title = "ACID" WHERE id = 1
  Note left of Database: post (id: 1, title: "ACID")
  Bob->>Database: UPDATE post_details SET updated_by = "Bob" WHERE id = 1
  Note left of Database: post_details (id: 1, updated_by = "Bob")
  Bob->>Database: COMMIT
  Alice->>Database: SELECT * FROM post_details WHERE id = 1
  Note right of Alice: post_details (id: 1, updated_by: "Bob")
```

In the sequence diagram, Alice believes that the post was updated by Bob, but this actually refers to a later version of the post.
