# Json Server
A nice package that starts a CRUD application that receives and returns JSON for quick testing.

### Example
Run `json-server -w db.json` and have the following in `db.json`.

```js
{
  users = [];
}
```

This will run a server with a route at `localhost:port/users` that will act like a fully-featured CRUD that uses the array as a DB of user objects.
