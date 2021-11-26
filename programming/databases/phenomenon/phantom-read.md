# Phantom read
When a transaction makes a business decission based on a set of rows satisfying a given predicate, and a concurrent transaction inserts a record matching that predicate in the meanwhile.

```mermaid
sequenceDiagram
  participant Alice
  participant Database
  participant Bob
  Note right of Database: post_comment [ (id: 1, post_id: 1), (id: 2, post_id: 1), (id:3, post_id: 1 )]
  Bob->>Database: BEGIN TRANSACTION
  Bob->>Database: SELECT * FROM post_comment WHERE post_id = 1
  Note left of Bob: post_comment [ (id: 1, post_id: 1), (id: 2, post_id: 1), (id:3, post_id: 1 )]
  Alice->>Database: BEGIN TRANSACTION
  Alice->>Database: INSERT INTO post_comment (id, post_id) VALUES (4, 1)
  Note right of Database: post_comment [ (id: 1, post_id: 1), (id: 2, post_id: 1), (id: 3, post_id: 1 ), (id: 4, post_ID: 1)]
  Alice->>Database: COMMIT
  Bob->>Database: SELECT * FROM post_comment WHERE post_id = 1
  Note left of Bob: post_comment [ (id: 1, post_id: 1), (id: 2, post_id: 1), (id: 3, post_id: 1 ), (id: 4, post_ID: 1)]
```


