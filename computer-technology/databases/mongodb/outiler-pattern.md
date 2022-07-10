---
tags: pattern
---

# Outlier Pattern

## When to apply
It addresses the instances when a few queries fall outside the normal pattern for the application. Popularity is usually a factor, such as for a social network application when one profile has significantly much more followers than the average.

## Technique
A flag is used to specify that a document is an outlier, and, instead of storing all referenced documents as embedded documents, which would make the referencing document grow too large, it separates them in several documents that reference back to the base document by its `_id`

## Example
Suppose we have a social network profile which many followers, we store some of the references in its document, and references to documents that store the rest in the `tbc` array:

```js
{
  "_id": ...,
  "username": "wil",
  "email": "wil@example.com",
  "tbc" [
    ObjectId(...),
    ObjectId(...),
    ...
  ],
  "followers": [
    ObjectId(...),
    ObjectId(...),
    ObjectId(...),
    ....
  ]
}, // The `tbc` documents
{
  "_id": ...,
  "followers": [
    ObjectId(...),
    ObjectId(...),
    ObjectId(...)
  ]
},
{
  "_id": ...,
  "followers": [
    ObjectId(...),
    ObjectId(...),
    ObjectId(...)
  ]
}
```
