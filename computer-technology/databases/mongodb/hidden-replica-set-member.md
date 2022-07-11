# Hidden replica set member
A replica set member can be hidden, they cannot be chosen as sources for the data and they cannot be elected as leaders, but they can participate on elections. This is a nice tool to create a back-up replica set member, when it'x less powerful than the rest.

A hidden replica set member must have a `priority` of 0 and have its `hidden` property as true.

## Example: Making a replica set member hidden
```js
var config = rs.status()
config.members[2].priority = 0
config.members[2].hidden = true
```
