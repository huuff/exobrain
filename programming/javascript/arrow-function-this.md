# `this` binding in arrow functions
In [[arrow-function]]s, `this` is always bound to the same value as it is in the scope that declares it, which is far more predictable as with `function`.

### Example
This throws an error:
```js
class NumFunc {
  num = 5;

  show = function() {
   console.log(this.num); 
  }
}

const showFunc = new NumFunc().show;
showFunc();
```

But this prints `5`:

```js
class ArrowFunc {
  num = 5;

  show = () =>  {
   console.log(this.num); 
  }
}

const showFunc = new ArrowFunc().show;
showFunc();
```
