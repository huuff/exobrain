# Delegation with properties
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

### Shorter version
We could just do

```ts
class User {
  public User(private readonly events: Eventing) {}

  on = events.on;
  trigger = events.trigger;
}
```

Note that we had to initialize the property using the shorthand declaration and initialization syntax. This is because if we initialize it anywhere else there's a risk that typescript will compile it after the delegated properties, and thus these will error. Thus, this is shorter but more fragile.
