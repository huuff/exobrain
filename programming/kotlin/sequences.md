# Sequences
Kotlin's Sequences are like Java 8 Streams in that they try to process a chain of operations lazily.

Kotlin has standard functional programming methods like `map`, `filter`, etc. The problem is that each of these methods create a new collection after they do their operation. Sequences, on the other hand, only create a new collection for the end result. This also makes them suitable to work with infinite sequences, since the processing can be stopped when enough data has been processed.

## Example
```kotlin
people.asSequence()
  .map(Person::name)
  .filter { it.startsWith("A")}
  .toList()
```

## Why not just use Streams?
Since Kotlin also targets versions prior to Java 8, using Streams directly is unsuitable because they are not available there
