# Autoincremented identifiers
There's usually two approaches for autoincremented identifiers (that is, a first row is inserted with ID `1`, second with `2`, etc.):

* Sequences: Are table independent objects that return sequential numbers. A [[postgresql]] example: `SELECT NEXTVAL('post_seq')`
* Identity columns: Declaring a column in some specific way, such as `AUTO_INCREMENT` for [[mysql]], makes it so that it is incremented automatically on every insert where the id is `NULL`.

## Cons of each
### Sequences
- What happens if some user inserts a row in a table disregarding a sequence that is governing its id?, for example:

An user inserts a row with id `5` on a table whose sequence used for autoincrementing the ID is currently at `4`. When a new row is inserted using the sequence, does this mean that this will just fail on duplicate ID and has to be retried?

### Identity column
- They are coupled to the table, so these can't be reused for several different tables. (Is this an issue tho? Why would you reuse a sequence for the ID's of several tables? Maybe when using some sort of [[table-per-class]] inheritance model where each is supposed to be the child of another one, so rows of different tables shouldn't share IDs)
- It's impossible to know the ID of a row prior to inserting it (at least, if we want it to be autoincremented). This messes up with batching with some tools (Hibernate uses a [[write-behind]] cache, and thus would need a database roundtrip to know the ID of the row, therefore, Hibernate disables batching for identity columns)




