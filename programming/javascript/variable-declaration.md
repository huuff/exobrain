# Variable declaration in Javascript
There are three keywords: `var`, `let` and `const`.

### `let`
It works pretty much like in any other programming language. It declares the variable as mutable (i.e. the reference can be changed) and it's [[block-scoping|block scoped]].

#### Example
```js
if (true) {
  let variable = 0;
}
console.log(variable) // ERROR
```

In the example, `variable` can only be accessed from within the `if` block.

### `const`
Same as `let`, but the reference is immutable.

#### Example
```js
const variable = 1;
variable = 2; // ERROR
```

In the example, the value of `variable` cannot be changed after declaration.

### `var`
It defines a [[function-scoping|function scoped]] or global, mutable variable. This is the "old way" of doing things, since `let` and `const` appeared in ES6. Since function scoping can be confusing, its usage is recommended against.

#### Example
```js
if (true) {
  var one = 1;
}

console.log(one); // Outputs 1
```

In the example, `one` exists in the outer scope even though it's declared in the inner one. If we were using `let`, this example would throw an error.

## [[hoisting]] differences
All declarations are hoisted in [[javascript]]. However the rules of hoisting for `let` and `const` are different to those of `var` (which is the reason why `var` has such confusing behaviour).  
I find it funny how this is usally phrased around in the [[javascript]] community. They say that `let` and `const` are hoisted but not "initialized", an example:

```js
console.log(one); // undefined
console.log(two); // throws error

var one = 1;
let two = 2;
```

This means that a hoisted `var` variable gets declared with a value of `undefined`, but `let` doesn't. I find it funny because I suppose having a value of `undefined` was considered "being unitialized" before `let` and `const` came out?

Anyway, this slightly changes my [[hoisting]] example. This works:

```js
x = 5;
console.log(x);
var x;
```

(It outputs 5)

But this doesn't:

```js
x = 5;
console.log(x);
let x;
```

(Throws an error)
