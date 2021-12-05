# `NTILE(n)`
Separates all tuples in each partitin in `n` buckets with the same number of tuple. It can be very useful to represent histograms with the results

## Example
```sql
SELECT id NTILE(4) OVER (ORDER BY (gpa DESC)) AS quartile
FROM student_grades
```

Separates the grades of students in 4 quartiles
