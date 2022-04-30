# Digest
A digest is a *content-addressable image identifier (CAIID)*. Since [[tags-are-mutable]], this is the only way to ensure the contents of the image are unchanged.

Instead of specifying a tag such as `«image»:«tag»` you can specify a digest by doing `«image»@sha:«digest»`. Some specific problems I can think of digests are:
* AFAIK these change from repository to repository, that is, if you migrate your repository from docker distribution to quay, your digests will be broken
* These are much less clear than tags
* Using a tag and a digest makes the tag just be ignored. Which might be confusing and unexpected.
