# `elt`
A nice abstraction I found in the [[eloquent-javascript]] book for working with the [[dom]]. It goes like this:

```js
function elt(type, attrs, ...children) {
  let node = document.createElement(type);
  for (let attr of Object.keys(attrs)) {
    node.setAttribute(attr, attrs[attr]);
  }
  for (let child of children) {
    if (typeof child != "string") node.appendChild(child);
    else node.appendChild(document.createTextNode(child));
  }
}
```

It allows us to very easily create an element and specify its attributes and children in a recursive structure that mimics the actual [[html]].

### Example
```js
elt("table", {
  class: "background",
  style: `width: ${level.width * scale}px`
}, ...level.rows.map(row => 
  elt("tr", { style: `height: ${scale}px` }, ...row.map(type => elt("td", { class: type })))
));
```

It builds the map of a game in an HTML table. See how succintly it specifies the structure of the whole table (rows and cells) using functional methods.
