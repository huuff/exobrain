# `-p` or `--publish`
This is the way to open ports to a Docker container. There's two different ways it functions:

## Specifying only a port on the container
If you only specify a port on the container such as

```
-p 80
```

Docker will map a random port on the host to the port `80` on the container. You can check which port was assigned by doing

```
docker port «container id»
```

## Specifying `-p «host port»:«container port»`
You'll map the `«host port»` on the host to the `«container port»` on the container
