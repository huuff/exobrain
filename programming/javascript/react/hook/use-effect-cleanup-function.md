# `useEffect` cleanup function
A callback inside a `useEffect` hook can optionally return a "cleanup function". This function is invoked when the component is unmounted and also when the hook is about to be run again (caused by a change in its dependencies).

### Example: when unmounting

```typescript
useEffect(() => {
  return () => {
    freeResources();
  };
})
```

### Example: when dependencies change
This can be observed when, for example, using the `useInterval` hook of `usehooks-ts`. When the duration of the interval changes, the interval is reset (meaning that it's stopped for as long as we're changing the duration), because the cleanup functions clears it.
