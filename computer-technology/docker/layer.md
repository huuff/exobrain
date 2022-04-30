# Layer
Docker's filesystems ([[union-filesystem]]) are composed of several layers that are put on top of each other to produce a single filesystem. Layers at the bottom are read-only and thus can be aggresively [[layer-cache|cached]], the layer at the top is writtable and ensures that the system can perform any write operations as in a normal filesystem.

When reading a file, the [[union-filesystem]] tries to read it from the topmost layer, if it isn't found then it tries the one underneath it and so successively until the file is found, so this might affect read throughput in images with a lot of layers.

## Copy-on-write
When a file that is present in a lower layer is modified in a higher one, its contents are copied to the higher one before being changed. This is why deleting a file from a lower layer in an upper one will increase image size instead of decreasing it (the file isn't actually deleted from the lower layer, only a new layer without it is added).

## Benefits
* Build time: Thanks to the [[layer-cache]], layers that are already built don't need to be rebuilt, whether changing an image or building an image that reuses layers from another.
* Storage optimization: The contents of these layers can be shared, so if several images reuse them, you don't need to have several copies of the layers around.
