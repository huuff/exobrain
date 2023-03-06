# `TransactionalTestExecutionListener`
This listener wraps tests in transactions and rolls them back when finished, which removes the need for using `@DirtiesContext` or manually cleaning the database.

==I'm unsure whether this is automatically enabled, or maybe it needs to be enabled by marking the full test class as `@Transactional`?==
