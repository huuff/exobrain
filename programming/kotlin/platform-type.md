# Platform type `T!`
A platform type is a type that comes from Java whose nullability Kotlin is unable to infer ([[inference-nullability-java-interop]]). Therefore Kotlin leaves it to the user to decide whether the type can or cannot be `null`. In Kotlin, such a type can be declared as either nullable or not. 

They are denotated by a trailing exclamation `T!`, which indicates that the nullability of the type is unknown

## Why Platform Types
Kotlin could instead define everything as a nullable type, but these get really unwieldly very fast since you'd need to use safe calls or non-null assertions at every usage.

This is against practicality, since in Java it's very usual that we use types completely disregarding nullability if we know for sure they are not going to hold a `null` value (even though the compiler won't assist us). So Kotlin mimics this behavior.
