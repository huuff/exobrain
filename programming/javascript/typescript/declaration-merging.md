# Declaration merging
Suppose you're given an interface `Point` with `x` and `y` properties, but you need to also have a `z` property, you just declare it in the same interface:

```ts
const point3d: Point = { x: 1, y: 2, z: 3} // Error, triggers excess property checking
```

But if you do

```ts
interface Point {
  z: number;
}

const point3d: Point = { x: 1, y: 2, z: 3} // This is fine
```

## When to use it
It's generally preferable to just declare all of your properties in the same place rather than spread them around files. However, if you are providing declaration files, using interfaces makes them extendable by using declaration merging. TypeScript uses it to provide different lib version with different capabilities depending on the runtime.
