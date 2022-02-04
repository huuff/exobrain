# Excess property checking (Freshness?)
One downside of [[structural-typing]] is that it doesn't prevent some typical mistakes, for example, given the function:

```ts
function doSomething(options: { generateReport: boolean, roundtrip?: boolean }) {
  ...
}
```

We can always call it with an object that is assignable to option, so we can do the following:

```ts
const wrongOptions = { generateReport: true, roundTrip: true };
doSomething(wrongOptions);
```

And thus, we'd think we enabled `roundtrip` but actually we mispelled it and the type system didn't prevent it. Enter **excess property checking**, if we instead pass an object literal, TypeScript will error

```ts
// Error: Object literal may only specify known properties
doSomething({generateReport: true, roundTrip: true});
```

Which solves a proportion of issues with this behavior. I've seen this mechanism called *freshness* (in TypeScript Deep Dive), but I haven't seen it anywhere else, and *excess property checking* is more descriptive, if verbose.
