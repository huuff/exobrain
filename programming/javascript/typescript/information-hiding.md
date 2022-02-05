# Information hiding in TypeScript
Actually `private` fields are not very good at hiding information. You can access a private field by doing `(variable as any).privateField`. If you really want something to be hidden, use a closure:

```ts
function varWithHiddenProperties() {
  const hidden = "hidden";
  return {
    doSomethingWithHidden() {
      console.log(hidden);
    }
  }
}
```

There's no way at all to access `hidden` from the object returned by `varWithHiddenProperties`;
