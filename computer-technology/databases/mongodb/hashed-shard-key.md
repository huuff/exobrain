# Hashed shard key
Any shard key can be made [[randomly-distributed-shard-key|randomly distributed]] by making it hashed. Hashed shard keys are the fastest at loading data, at the expense of making queries unable to be [[targeted-query|targeted queries]]

You can make a shard key hashed by doing:
```js
db.shardCollection(«collection», { «key»: "hashed" })
```
