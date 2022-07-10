# `PIVOT`
An operation where different values of an attribute become attribute names

## Example
Consider a relation `clothes_item (item_name, color, clothes_size, quantity)` that might look like

|item_name|color|clothes_size|quantity|
|---------|-----|------------|--------|
|dress    |dark |small       |2       |
|pants    |white|large       |4       |
|shirt    |dark |small       |2       |
|dress    |pastel|medium     |3       |

Then a query like

```sql
SELECT *
FROM clothes_item
PIVOT (
  SUM(quantity)
  FOR color IN ('dark', 'pastel', 'white')
)
```

Would produce something like

|item_name|clothes_size|dark|white|pastel|
|---------|------------|----|-----|------|
|dress    |small       |2   |0    |0     |
|dress    |medium      |0   |0    |3     |
|shirt    |small       |2   |0    |0     |
|pants    |large       |0   |4    |0     |
