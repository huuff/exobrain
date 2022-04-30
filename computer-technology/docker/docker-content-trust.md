# Docker Content Trust
A mechanism to sign and verify images. You can sign images to allow their usage in a specific context such as `dev` or `prod`

### Example
If you don't have a key you can generate one by doing:

`docker trust key generate «name»`

Or you can load it with `docker trust key load «keyfile».pem --name «name»`

Then you associate it with a repository:

```
docker trust signer add --key «public key».pub «name» «repository»
```

And you can sign and push your image with

```
docker trust sign «image»
```
