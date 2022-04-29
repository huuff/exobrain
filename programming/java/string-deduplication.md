# String Deduplication
JDK introduces string deduplication into the JVM. This means that memory for strings that are equal are reused, so a thousand strings with the same content should take up exactly the same amount of memory as one string.

[Source](https://malloc.se/blog/zgc-jdk18)
