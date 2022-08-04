---
tags: definition
---

# Bitmap operations
Redis does not actually have a bitmap data structure, but strings can have bitmap operations invoked onto them such as

* `getbit «key» «offset»`: Get the value of the bit of string `«key»` at offset `«offset»`
* `setbit «key» «offset» «0|1»` Set the value of the bit of string `«key»` at offset `«offset»`

The benefit of bitmaps is that they are very space-efficient to represent binary options. Where other data structures require us to store some larger objects, a bitmap only needs a bit for every single instance to decide whether the event we observe happened or not.

### Example
The canonical example is storing unique visits: if we want to store whether each user visited our site on a specific day `visited:«date»` we have two choices:

* Make it a set and store each user that visited the site. We'd have to store some user identifying information such as the username which is potentially much bigger than a bit.
* We could make it a bitmap, then we'd have to reserve a bit for each user.

This means that if we have 1,000,000 users, the bitmap only takes 1,000,000 bits, however these bits are occupied, whether many or too few users visited the site. On the other hand, the set only would store the users that visited the site, but each one would take much more than a bit.
