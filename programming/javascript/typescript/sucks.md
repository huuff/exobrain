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

## The `?` is at the wrong side of nullable properties
A nullable property is declared like

```ts
type objectType = {
  nullableProperty?: string
};
```

In my opinion, it should be in the type (as in `string?`) because the quality of being nullable belongs to the type and not to the property name. Also, it infuriatingly makes it look like the [[elvis-operator]]
