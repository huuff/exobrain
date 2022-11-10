# Selector Composition
A CSS rule can be made to extend another in CSS modules using the `composes` property:

```css
.button-default {
  padding: 5px;
  border: none;
  border-radius: 5px;
  background-color: grey;
  color: black;
}

.button-success {
  composes: button-default;
  background-color: green;
  color: white;
}
```
