# `useCallback`
This hook memoizes a function so that it doesn't get re-created on every render. When an array of dependencies is provided, the function is only recreated when these change. 


### Equivalence to [[use-memo]]
`useCallback` is equivalent to a `useMemo` passing the callback:

```typescript
useCallback(
  () => doSomething(a, b, c),
  [a, b, c],
);
```

Is equivalent to

```typescript
useMemo(
  () => () => doSomething(a, b, c),
  [a, b, c],
);
```
