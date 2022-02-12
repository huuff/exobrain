# `internal` visibility
The default visibility in Java is package-private. Kotlin does not have this visibility level because it uses packages exclusively to organize code.  

The alternative is `internal` visibility, which means that a declaration is only visible inside the current module, which can be a Maven module, a Gradle project or other type of compilation unit
