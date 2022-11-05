# Name Shadowing
In Rust, a variable can be declared with the same name as another further down in the same scope, even with a different type. This is very helpful to do type conversions, because you won't need a separate variable `thing_str` before converting `thing` to another type, you can just shadow it.

### Example

```rust
let mut guess = String::new();

io::stdin()
  .read_line(&mut guess)
  .expect("Failed to read line")
  ;

let guess: u32 = match guess
                        .trim()
                        .parse()
                        .expect("Not a valid number") // does this actually work
                        ;
```
