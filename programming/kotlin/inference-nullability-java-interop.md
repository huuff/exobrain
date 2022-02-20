# Inference of nullability for Java interop
Kotlin's compiler does not analyze usage to find out the nullability of a type that comes from Java, but it does analyze annotations such as `@Nullable` and `@NotNull`. It recognizes many types of annotations such as [[jsr305]], Android ones and JetBrains.

