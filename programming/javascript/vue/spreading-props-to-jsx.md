---
tags: how-to
---

# How to spread props to JSX in Vue
Usually you'd do

```jsx
<div {...props} >
```

But for a `VNode` this won't work: 

```jsx
<div {...node.props}>
```

But this does:

```jsx
<div {...{props: node.props}}>
```
