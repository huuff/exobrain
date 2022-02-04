---
tags: pattern
---

# Nominal typing with a generic and a literal
If you want to simulate [[nominal-typing]], you can use a literal type to discriminate between two variants of the same type.

### Example
If you don't want to mix `Customer` and `Product` ids:

```ts
type Id<T extends string> = {
  type: T;
  value: string;
}

const customerId: Id<'customer'> = { type: "customer", value: "1"};
let productId: Id<'product'> = customerId; // Error!
```
