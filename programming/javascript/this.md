# `this`
The source of many headaches. `this` is a pretty different thing depending on where it's used:

## In a method
The `this` object is what is at the left of the dot:

```js
obj.func(); // `this` points to `obj`
```

## In an event listener
`this` points to the element that raised the event:

```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-u">
  </head>

  <body>
    <button>Click me!</button>

    <script>
      document.querySelector("button").addEventListener("click", function() { console.log(this.innerText) });
    </script>
  </body>

</html>
```

When the button is clicked, it prints `Click me!`.

## In global scope
It points to the global object, `window` in browser or `globalThis` in [[nodejs]].

```js
> console.log(this); // Window
```

## In an [[arrow-function]]
![[arrow-function-this]]

## `bind`
It's a preferred to declare a function that's supposed to be passed around as an arrow function, since `this` is more predictable. However, if all else fails, we can always use `bind` to explicitly set what `this` means in a function. This fixes the previous example:

```js
class NumFunc {
  num = 5;

  show = function() {
   console.log(this.num); 
  }
}

const numfunc = new NumFunc();
const showFunc = numfunc.show.bind(numfunc);
showFunc();
```
