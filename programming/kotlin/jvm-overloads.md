# `@JvmOverloads`
Adding this annotation to a method with default and optional parameters creates overloads that satisfy every possible combination of these in the compiled Java code. This allows us to easily use these from Java, where there are no optional or default arguments and "telescopic" methods are the only option.
