# Lost update
Happens when one transaction reads one row before another concurrent one modifies it, then the first transaction might make a business decision based on the read value which is no longer the real value. This one might be specially dangerous since it affects [[read-committed]], the default [[isolation-levels|isolation level]] in many database systems.

```mermaid
sequenceDiagram
  participant Alice
  participant Database
  participant Bob
  Note right of Database: post (id: 1, title: "Transactions")
  Alice->>Database: BEGIN TRANSACTION
  Alice->>Database: SELECT * FROM post WHERE id = 1
  Note right of Alice: post (id: 1, title: "Transactions")
  Bob->>Database: BEGIN TRANSACTION
  Bob->>Database: UPDATE post SET title = 'ACID' WHERE id = 1
  Note left of Database: post (id: 1, title: "ACID")
  Bob->>Database: COMMIT
  Alice->>Database: UPDATE post SET title = "BASE" WHERE id = 1
  Note right of Database: post (id: 1, title: "BASE")
  Alice->>Database: COMMIT
```

### Example
A customer might buy a product without knowing that it has changed in price.

## Solutions
* [[2pl]]: Acquiring a lock can prevent the second transaction from updating the records
* [[mvcc]]: By checking the versions, the phenomenon can be detected at commit for the first transaction and then abort it
