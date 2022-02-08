# Configuration
A configuration is a set of dependencies, these are resolved to files and then exposed to projects.

The [[java-plugin]] includes some default configurations like
* `implementation` for runtime dependencies
* `compileOnly` for compile dependencies
* `testImplementation` for test runtime dependencies, note that it extends `implementaton`, and thus includes all dependencies declared for it
* `testCompileOnly` only for compiling tests

## Example
Declaring a configuration
```groovy
configurations {
  example
}
```

Declaring dependencies in a configuration
```groovy
dependencies {
  example "junit:junit:4.13"
}
```
