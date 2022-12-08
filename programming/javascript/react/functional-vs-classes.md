---
tags: comparison
---

# Class vs functional components
Functional components are the clear winner here because:

* We're forced to split logic across our component depending on their dependency of the lifecycle of the component: initializing the state in the constructor, logic that runs on each update on `componentDidUpdate`, logic that runs on mounting in `componentDidMount`. It's unlikely that our logic cleanly fits this model (e.g. our logic only needs to run on mounting or updating but not both), so we're likely to have to split it across these methods.
* One of the standard ==TODO: what are the rest?== ways of sharing state between components in class components is through [[higher-order-component|Higher-Order Components]]. This means we'll have to wrap our component in another (e.g., a `<Context.Consumer>` for [[react/context|contexts]]). This leads to deeply nested JSX (Wrapper hell), which is less comfortable for working with (more complex to look at, edit, and debug, since all those nesting components are shown in the devtools)
* There's quite a lot of extra boilerplate: you have to handle the correct `this` context binding for methods, you have to pass `props` to the parent with `super(props)`, in `componentDidUpdate` you have to manually check for what props did change.
* Access to props and state is strictly through `this.props`. This means destructuring (or indexing) into it on every function that uses them. Besides, state is lumped together and must be mutated together (usually by spreading its previous values, e.g. `this.setState({...state, value: "new value"})`). With hooks, we can split state into logical units (`useState`), which makes it less verbose and easier to reason about.
