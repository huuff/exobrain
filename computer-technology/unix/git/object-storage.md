# Object storage
Git is actually a content-addressable filesystem which only has a few wrappers that simplify using it as a version control system. Putting objects into git follows a simple process:

1. For every file (or directory) a hash of its contents is extracted by git (you can do it manually by running `git hash-object «file»`, you can even store it by running `git hash-object -w «file»`)
2. This will return a 40 character SHA1 hash of the file, which you can always use to find it in the object store (located under `.git/objects`)
3. Objects stored there are hierarchically separated into a tree of directories, where the first 2 bytes of the hash is used as the parent and all other objects that start by the same two bytes are children of it. This makes it easier and more performant to find them. Note that objects stored in the object storage are compressed with `zlib` and thus, lighter than their normal representations.
4. You can then find any object and check its contents with the `git cat-file -p «hash»`. The `-p` flag makes the command automatically detect the type of the object to correctly display its contents.
