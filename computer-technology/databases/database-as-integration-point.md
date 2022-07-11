# Database as integration point
(A bit of divagation ensues, different to my usual copy-paste note-taking notes)

A database can be used as the integration point between multiple different services that need the same data. Some related ideas:

* Relational databases have already powerful and granular access-control mechanisms that might be taken advantage of instead rolling out some custom security service or OAuth server.
* They have strong transaction guarantees and [[acid]] compliance. The more transaction-related needs are offloaded to the database, the less complex application-level concurrency control needs to be done.
* They allow for complete integrity checks, that can be used as the single source of truth instead of repeating these validations at every single tier/layer of our applications.
* Almost everything that is offloaded to the database will be faster, we can even make the DB serialize the query results as JSON to return it to the clients.

Without any intermediate layer between our database and application, this would mean, of course that we'd be coupled to it. So the usual alternative is wrapping it in an API. This might mean create a whole application to babysit the database incurring in some potential problems:
* There's maintenance costs of the application, even if we have some framework that generates most of the scaffold for it, surely we have to code some API logic ourselves.
* We are likely to still have to duplicate our integrity checks in the API application, even if we then distribute it as an OpenAPI specification, removing the need to replicate it in every client.
* Transaction and security issues remain, but isolated to the API.

I think the silver bullet might be [[postgrest]]. PostgREST really provides a full-fledged API for a database with minimal configuration that allows us to take advantage of all of these relational database features. I have to investigate this concept further.
