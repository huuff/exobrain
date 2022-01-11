---
tags: how-to
---

# Mocking a module
First, import the exports you want to mock

```ts
import { useRouter } from "vue-router"
```

Then, use `jest.mock` on the module

```ts
jest.mock("vue-router", () => ({
  useRouter: () => jest.fn(() => ({ // Mock the export
    getRoutes: () => {}, // Stub the function to mock in the export (TS might complain)
  })),
}));
```

Then, we can put an actual mock inside the test

```ts
test("example", () => {
  (useRouter as jest.MockedFunction<any>).mockImplementationOnce(() => ({
    getRoutes: () => [ mockRoute1, mockRoute2, mockRoute3 ],
  }));
});
```

## Keeping the rest of the original exports
This, however, overwrites all exports of `vue-router`. If you want to keep some of the original then do:

```ts
jest.mock("vue-router", () => ({
  ...jest.requireActual("vue-router"),
  useRouter: () => jest.fn(() => ({ // Mock the export
    getRoutes: () => {}, // Stub the function to mock in the export (TS might complain)
  })),
}));
```
