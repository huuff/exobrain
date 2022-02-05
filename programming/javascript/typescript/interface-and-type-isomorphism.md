# Types and interfaces
These are two different ways of defining new types in TypeScript, the following two are exactly the same

```ts
type Person = {
  firstName: string;
  lastName: string;
}
```

```ts
interface Person {
  firstName: string;
  lastName: string;
}
```

## Operations
`&` and `extends` produce exactly the same result

```ts
type PersonWithAddress = Person & { address: Address };
```

```ts
interface PersonWithAddress extends Person {
  address: Address;
}
```

## Differences
* Interfaces cannot be used to represent more complex types like [[conditional-types]] and cannot extend an union, so if you need these, you have to use `type`
* Interfaces however can be [[declaration-merging|augmented]] while types cannot.
