---
tags: tip
---

# Better [[enum]]
As you may know [[typescript-and-javascript-divergences|TypeScript enums are "special"]]. Their behavior might be inconsistent and different from the JavaScript spec. I've seen advice around of steer clear of them (Effective TypeScript maybe?).

Anyway, unions of literals seem so much more simple, understandable and concise, but they are not kept at runtime so you can't iterate them (my main reason to use [[enum]]s). But I do something else:

```typescript
export const allCountries = [ "SPAIN", "FRANCE", "GERMANY" ];

export type Country = typeof allCountries[keyof typeof allCountries];
```

This way you can iterate the array for the values and still have type safety for the type!

==Does this actually work? I've only tested with a Vue project created with Vue CLI, which sometimes swallows type errors==
