---
tags: tip
---

# Using `ref`s for mutable state
`ref`s can be used to store mutable state.

### Example
Using it to store an interval:

```javascript
function Timer() {
  const intervalRef = useRef(null);

  useEffect(() => {
    intervalRef.current = setInterval(doSomething, 100);
    return () => clearInterval(intervalRef.current);
  });
}
```
