---
tags: comparison
---

# Class vs functional components
Functional components are the clear winner here because:

* With class components the only option for hooking into the rendering of the component to run some logic is through lifecycle methods (e.g. `componentDidMount`, `componentDidUpdate`). This means that we're likely forced to split our code between them (e.g., for an effect that's run both when the component renders and when it's mounted). Besides, in `componentDidUpdate` we have to check what props changed, and also lump there together all of our effects that run on render, potentially leading to a huge method for larger components. With `useEffect` we can target specifically the props we want, merge mounting and rendering and also split logic according to its domain.
* One of the standard ==TODO: what are the rest?== ways of sharing state between components in class components is through [[higher-order-component|Higher-Order Components]]. This means we'll have to wrap our component in another (e.g., a `<Context.Consumer>` for [[react/context|contexts]]). This leads to deeply nested JSX (Wrapper hell), which is less comfortable for working with (more complex to look at, edit, and debug, since all those nesting components are shown in the devtools)
* With class components we're forced to handle the correct context for `this` (e.g., with `.bind()`)
