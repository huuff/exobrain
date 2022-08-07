# List
A redis list can be managed through commands such as:

* `LPUSH` and `RPUSH` to insert elements at left or right respectively
* `LPOP` and `RPOP` to "pop" elements (as in a stack) from either the left or right respectively
* `LTRIM «list» «start» «end»` keeps only elements from `«start»` to `«end»`
* `LRANGE «list» «start» «end»` to get elements from `«start»` to `«end»`

Some things to note:
* A negative number can indicate a position from the end, for commands that take indexes
* Given the previous point, AFAIK the only way of getting all elements of any list is `LRANGE «list» 0 -1`
* Lists are implemented with [[linked-list|linked lists]] so performance is $O(1)$ for insertion and retrieval either at the start or the end, but $O(n)$ for retrieving (or inserting) at any point in-between
* This means lists are very appropriate for storing highly sequential data where all new data is appended to the data structure, such as [[log|logs]]
