# Assignability
A type `T` is assignable to a type `Q` if an instance of type `T` is assignable to a declaration of type `Q` (duh), this means, the following is possible

```ts
const t: T = /* do something that makes a T */
const q: Q = t;
```

This means that `T extends Q`.

## For objects
For an object of type `Q` to be assignable to a type `S` this requires that all properties of `S` are present in `Q`, and their types are assignable to those of the same propertes in `S`.

```ts
type S {
  stuff: boolean | string;
  something: number;
}

type Q {
  stuff: boolean;
  someting: number;
  somethingElse: string; // Q can have more properties that aren't in S
}
```

## Through set theory ([[types-as-sets]])
* It means that a type is assignable to another means that it's a [[subset]] of it
* That some values are assignable to a type means that they are members of it.
