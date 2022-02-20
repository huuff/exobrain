# Null exceptions in Kotlin
They are more descriptive than in Java (is this true as of Java 17?). The Kotlin compiler generates checks for all arguments and return types so that calls with incorrect types generate exceptions. Note that this should only happen when using non-null assertions `!!` or when using Java interop
