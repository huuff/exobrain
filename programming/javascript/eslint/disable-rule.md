---
tags: how-to
---

# Disable an eslint rule

* On same line: use `//eslint-disable-line <rule>`. Example:
```typescript
const test: any = "test"; //eslint-disable-line @typescript-eslint/no-explicit-any
```
* On the next line use `//eslint-disable-next-line <rule>`. Example:
```typescript
//eslint-disable-next-line @typescript-eslint/no-explicit-any
const test: any = "test";
```

==TODO: inside `.eslintrc`==
