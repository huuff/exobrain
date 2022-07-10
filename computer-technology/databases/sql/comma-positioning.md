---
tags: tips
---

# Positioning commas before column names
I often find myself getting unhelpful syntax errors because of trailing commas, for example

```sql
SELECT
  name,
  title,
  deptartment,
  salary,
FROM employee
```

I found that putting the commas before the column names really prevents this kind of issue, even though it looks really ugly

```sql
SELECT
  name
  ,title
  ,department
  ,salary
FROM employee
```
