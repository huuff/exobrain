# Write skew
Where two concurrent transactions update disjoint data in a way that no separate transaction breaks an integrity constraint, but both together do.

==TODO: [[high-performance-java-persistence]] mentions that this phenomenon happens when updating two different tables, but this isn't actually a requisite, is it? What's the source on this term? How can I find it?==

### Example
Suppose an application for an hospital where there must always be at least one doctor on call at all times.

```mermaid
sequenceDiagram
  participant Alice
  participant Database
  participant Bob
  Note right of Database: doctor: [ (name: 'Alice', on_call: true), (name: 'Bob', on_call: true), (name: 'Carol', on_call: false)]
  Alice->>Database: BEGIN TRANSACTION
  Bob->>Database: BEGIN TRANSACTION
  Alice->>Database: SELECT COUNT(*) FROM doctor WHERE on_call=true
  Note right of Alice: Alice sees that there are 2 on-call doctors
  Bob->>Database: SELECT COUNT(*) FROM doctor WHERE on_call=true
  Note left of Bob: Bob sees that there are 2 on-call doctors
  Alice->>Database: UPDATE doctor SET on_call=false WHERE name="Alice"
  Bob->>Database: UPDATE doctor SET on_call=false WHERE name="Bob"
  Alice->>Database: COMMIT
  Bob->>Database: COMMIT
  Note right of Database: doctor: [ (name: 'Alice', on_call: false), (name: 'Bob', on_call: false), (name: 'Carol', on_call: false)]
```

## Solutions
* [[2pl]]: The first transaction can acquire locks on these records
* [[mvcc]]: The constraints can be validated at commit for the first transaction, and then abort it.
