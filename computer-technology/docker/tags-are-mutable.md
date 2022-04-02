---
tags: caveat
---

# Tags are mutable
A Docker tag does not always represent the same object. Especially the `latest` tag does change wildly and has basically no static meaning.

### Example
Suppose you release an image and tag it as `«app»:1.5`. Afterwards, you realize that it has a serious security vulnerability, so, to prevent anyone from using that image, you fix it and re-release the fixed image as `«app»:1.5`. However, users won't have a way of knowing whether they are using the vulnerable version or to update, since both tags are the same.
