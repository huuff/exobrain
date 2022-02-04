---
tags: pattern
---

# Discriminated union
An [[union]] with a *discriminator* property. By checking the discriminator we can [[narrowing|narrow]] the type easily.

### Example
```ts
type Square = {
  type: "square";
  side: number;
}

type Circle = {
  type: "circle";
  radius: number;
}

type Shape = Square | Circle
```

Then we can narrow it in a function

```ts
function perimeter(shape: Shape): number {
  if (shape.type === "square") { // narrows shape to Square
    return shape.side * shape.side;
  } else if (shape.type === "circle") { // narrows shape to Circle
    return 2 * Math.PI * shape.radius;
  } else { // I think this is needed, though typescript has narrowed the type to `never` here.
    throw new Error();
  }
}
```
