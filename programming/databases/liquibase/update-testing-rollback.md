# `updateTestingRollback`
A command that does the following

1. Applies changes in the [[changelog]] in sequential order
2. [[rollback]]s them in reverse order
3. Applies them again

Applying them again ensures that the rollback worked (otherwise there might be conflicts)
