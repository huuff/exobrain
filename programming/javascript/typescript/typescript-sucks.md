# Things that suck in Typescript
These are true as of [[typescript]] 4.5

## Can't return a [[nullable-type]]
```typescript
function fun(): T?
```

Is not correct. The correct way is:
```typescript
function fun(): (T | undefined)
```

Maybe even
```typescript
function fun(): (T | undefined | null)
```
