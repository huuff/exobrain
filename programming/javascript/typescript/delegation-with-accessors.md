# Delegation with accessors
We can use [[accessors]] to ease the implementation of [[delegation]] in languages that have no native delegation like [[typescript]]

### Example
Suppose we have an user class:

```ts
class User {
  private readonly events: Eventing;
  ...
}
```

Where eventing has two methods: `on(eventName: string, callback: Callback)` and `trigger(eventName: string)` for declaring an event listener and triggering it respectively. We want our `User` class implement both and delegate to `Eventing`, but without native delegation, we can only reimplement both signatures in our `User` class.

However, we can use accessors to return the methods of the object we delegate to, to make it cleaner:

```ts
class User {
  private readonly events: Eventing

  get on() {
    return events.on;
  }

  get trigger() {
    return events.trigger;
  }
}
```

And thus, calls can be done like if these methods were on user:

```ts
user.trigger("change");
```
