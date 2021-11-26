# Dirty read
Happens when one transaction reads uncommited changes from another transaction. This is risky because that other transaction might be rolled back.

```mermaid
sequenceDiagram
  participant Alice
  participant Database
  participant Bob
  Note right of Database: post (id: 1, title: "Transactions")
  Alice->>Database: BEGIN TRANSACTION
  Bob->>Database: BEGIN TRANSACTION
  Alice->>Database: UPDATE post SET title = 'ACID' WHERE id = 1
  Note right of Database: post (id: 1, title: "ACID")
  Bob->>Database: SELECT * FROM post WHERE id = 1
  Note left of Bob: post (id: 1, title: "ACID")
  Alice->>Database: ROLLBACK
  Note right of Database: post (id: 1, title: "Transactions")
```

## Solutions
* [[2pl]]: The uncommited rows are protected by write locks which prevent other concurrent transactions from reading these until they are committed.
* [[mvvc]]: The previous version of the uncommited change can be read instead of it.
