---
tags: pattern
---

# Extended Reference Pattern
Used for when you have many different logical entities each with their own collection, but you want to gather them together for a specific function. Doing that might have a performance impact, so the pattern is to just store the most frequently accessed information of the other collection along with the reference. 


## Tradeoffs
This pattern trades off the the duplication of the data for a reduction in the number of queries required to access the information together.

An important consideration is how often this information changes: If it changes often, the cost of updating it in multiple places might outweight the benefits of retrieving it from only one.

## Example
Suppose you have a collection of students and another of classes. Since many students take many classes, you hold a reference to each class a student takes on their document:

```json
{
  "_id": ...,
  "name": "John Doe",
  "classes": [
    { 
      "_id": ...
    },
    {
      "_id": ...
    },
    {
      "_id": ...
    },
    {
      "_id": ...
    }
  ]
}
```

Getting a student along with the name of all the classes they take is a frequent query, so we decide to store it along with the reference:

```json
{
  "_id": ...,
  "name": "John Doe",
  "classes": [
    { 
      "_id": ...,
      "name": "Trigonometry"
    },
    {
      "_id": ...
      "name": "Physics"
    },
    {
      "_id": ...,
      "name": "Women in Literature"
    },
    {
      "_id": ...,
      "name": "AP European History"
    }
  ]
}
```
