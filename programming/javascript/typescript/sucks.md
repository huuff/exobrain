# Things that suck in Typescript
These are true as of [[typescript]] 4.5

* The use of a colon to separate types and names is very modern and reminiscent of typed lambda calculus, however given that Typescript is a superset of [[javascript]] this overloads the meaning of `:` since it's what [[javascript]] uses for declaring object properties.
* Why do you have to put a name on parameters on function types? e.g. `(title: string) => void`. Why does the name matter? Haskell does not need it (for example)
* Private properties can affect type compatibility, thus, if two classes differ only on private properties, they are not compatible. This is due to the fact that there are no private properties in Javascript. [Source](https://github.com/microsoft/TypeScript/issues/18499)
