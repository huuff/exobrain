# Selection ($\sigma$)
An unary operation that denotes a subset of a [[relation]] that satisfies a predicate

## Definition
Is noted as $\sigma_{a \theta b}(R)$ or $\sigma_{a \theta v}(R)$ where

* $a$ and $b$ are attribute names
* $\sigma$ is a binary operation in the set $\{\lt, \leq, \et, \neq, \geq, \ge \}$
* $v$ is a value constant
* $R$ is a relation

It means:
* The selection $\sigma_{a \theta b}(R)$ denotes all [[tuple]]s in $R$ for which the predicate $a \theta b$ holds
* The selection $\sigma_{a \theta v}(R)$ denotes all [[tuple]]s in $R$ for which the predicate $a \theta v$ holds

## Example
Given a relation like `instructor`:

|id|name|salary|
|--|----|------|
|1 |Mike|75000 |
|2 |Bob |92000 |
|3 |Will|50000 |

The selection $\sigma_{\text{salary} \geq 60000}(\text{instructor})$ returns the tuples

|id|name|salary|
|--|----|------|
|1 |Mike|75000 |
|2 |Bob |92000 |

## Misconception, relation to [[sql]]
Actually, the relational algebra selection operation corresponds to the `WHERE` SQL clause, not to the `SELECT` (which corresponds to projection). This is an unfortunate historical fact.
