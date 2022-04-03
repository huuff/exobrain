# Image squash
Docker can squash all layers of an image into a single one. This is not really a best practice, and has its pros and cons.

### Pros
It's a good choice when building a base image that has too many layers. Squashing it simplifies it so:

* It takes less space I think?
* When viewing the [[history]] of the image, all of these base-image layers won't obscure the view of your image. (I think?)

### Cons
Obviously the build process of the image is obscured, and you can't take any advantage of the cache for changes to that image, that's why it's best for base images that are not intended to change much

### The execution
```
docker build --squash 
```
