# `ref` callback
For normal refs, mutating them does not trigger a re-render. This can be solved by using callbacks as `ref`s. A callback `ref` takes an element and operates on it:

```typescript
const measureRef = useCallback(node => {
  setWidth(node.getBoundingRect().width;
}, []);

return <div ref={measureRef}>...</ref>
```

This way, calling `measureRef` triggers a re-render.

