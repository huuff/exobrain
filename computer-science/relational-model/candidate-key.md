# Candidate key
A [[superkey]] with no superfuous attributes.

### Example
Given a relation
```
sales(year, month, day, volume)
```

The attributes `(year, month, day, volume)` form a [[superkey]], but it's now a **candidate key** since the `volume` attribute is not necessary to uniquely identify the tuple.
