# `any` evolution
(Source: Effective Typescript Item 41)

A better type for an `any` variable can be inferred from usage

### Example 1
```ts
function range(start: number, limit: number) {
  cons out = []; // inferred as 'any[]''
  for (let i = start; i < limit; i++) {
    out.push(i); // 'out' is still 'any[]'
  }

  return out; // 'out' is inferred as 'number[]'
}
```

### Example 2
```ts
const result = []; // type is 'any'
result.push(1); // type is 'number[]'
result.push("a"); // type is '(number | string)[]'
```
