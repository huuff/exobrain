# Stored procedure
A function or procedure can be created using a special SQL dialect that allows for kind-of imperative execution and direct access to tables

## Standard compliance
Almost no database system is compliant with the official stored procedure standard. This is mainly the result of the standard lagging behind and every database vendor offering stored procedures much before they were standarized

## Why not do it in the application code?
Obviously, general-purpose programming languages that are turing-complete are much more powerful, might allow more concise representations of the procedure, probably more understandable. There are however some advantages to using stored procedures

* On relation to [[database-as-integration-point]]: It might allow specify these procedures in a way that is accesible for all different programming languages and applications that use the database
* Being closer to the data, and considering how powerful SQL databases are for optimization, stored procedures might be much faster and easier to optimize than application code.
