# Lodash chaining
You can chain lodash functions if you use the `_` import

### Example
```ts
import _ from lodash;

const bestPaid = _(allPlayers)
  .groupBy(player => player.team)
  .mapValues(players => _.maxBy(players, p => p.salary)!)
  .values()
  .sortBy(p => -p.salary)
  .value()
```
