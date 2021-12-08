---
tag: caveat
---

# Liquibase's argument order
I find it weird and unintuitive but the argument order for [[liquibase]]'s commands is:

```
liquibase [global options] [command] [command attribute]
```

So running update is

```
liquibase --changeLogFile=dbchangelog.sql update
```

And I think the following does not work:

```
liquibase update --changeLogFile=dbchangelog.sql
```
