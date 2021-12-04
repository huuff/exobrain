# Superkey
A set of one or more [[tuple|attributes]] that could allow us to uniquely identify a [[tuple]]. 

### Example
Given a relation
```
sales(year, month, day, volume)
```

The attributes `(year, month, day)` form a **superkey**, since there can't be two tuples with the same values (instead, the `volume` would be the sum of the two)
