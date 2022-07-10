---
tags: comparison
---

# MongoDB vs Relational Databases

## Pros
* MongoDB is theoretically easier to scale horizontally through built-in [[sharding]], though this is not necessarily something that relational databases are incapable of doing
* The [[document-model]] allows for better locality, dispensing the need for complex joins, and it's also more performant
* The [[aggregation-framework]] builds queries that are definitely easier to understand than complex SQL queries, since these read top to bottom as a series of transformations, while in SQL the order in which you have to read a query to understand it is inside-out

## Cons
* [[denormalization]] means that you have to choose an appropriate design for your schemas that matches your application usage. Actually I think that this is easier for RDBMS since normalization is an automatic process that results in a design that is really reusable across any type of application usage, even though it might require complex joins
