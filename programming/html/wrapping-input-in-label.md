# Wrapping an `input` in a `label`
`input`s are supposed to have an associated `label`. A usual way of doing this is:

```html
<label for="exampleId">Example</label>
<input type="text" id="exampleId" />
```

The other one is wrapping the `input` inside the label such as:

```html
<label>
  Example: <input type="text" />
</label>
```

## Which one is better?
I think I read somewhere that the first one is more standard (*standarder*?), but I think I like the second one better. This way, the `for` attribute can be omitted and thus we are not coupled to the `input` id (we might even omit it, I think). Also it reflects the final layout of the input in a pretty visual way (if both are on the same line, the second one reflects it, if not, we can always separate them with a line break in the markup).
