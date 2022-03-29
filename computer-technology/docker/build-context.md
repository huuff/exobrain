# Build context
A set of files that are allowed to access to the build process of an image. When building an image, the Docker client uploads this context to the daemon, which then makes it available to the build. For example when running:

```
docker build -t «tag» -f «dockerfile» «path»
```

The `«path»` is the build context for the build. Usually, for Dockerfiles and build contexts in the same directory we see

```
docker build -t «tag» .
```
