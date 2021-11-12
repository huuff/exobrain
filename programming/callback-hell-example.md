# Example of a Callback Hell
```js
getFromServer1((response) => {
  validate(response, (result, response) => {
    if (result.isValid()) {
      sendToUser(response);
    } else {
      getFromServer2((response) => {
        sendToUser(response);
      });
    }
  });
});
```

In the example, a result is received from `server1`, then, it's asynchronously validated and:

* If valid, sent to the user
* If invalid, requested from `server2` and then sent to the user (without validating).
