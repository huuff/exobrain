---
tags: how-to
---

# How to pass props to a render function
Declare the type of the props as in

```typescript
type RenderProps = {
  prop: string;
};
```

Then just use your render function with a parameter as in:
```typescript
const render = (props: RenderProps) => h("p", {}, props.pro`);
```
