# Full Text Search
MongoDB also has full text search, where the results of the query are looked for in the text of the indexed fields taking into account different word variations and locale differences and are also sorted by relevance.

## Creating a text index
You can create a text index for the title and body of articles doing the following

```js
db.articles.createIndex({"title": "text", "body": "text"})
```

### Assigning weights
Contrary to normal [[compound-index]]es, the order of the keys does not matter. If you instead want to give some weight to each field to impact its relevance in queries you can do as following

```js
db.articles.createIndex(
  {"title": "text", "body": "text"},
  {"weights": {
    "title": 3,
    "body": 2,
  }}
)
```

### Index on all fields
You can also create a text index on all fields with the following:

```js
db.articles.createIndex({ "$**": "text" })
```

## Performing text search
You have to use the `$text` [[operator]].

```js
db.articles.find({"$text": { "$search": "impact crater lunar"}})
```

It's important to note that the default behavior on multi-word searches is to apply an OR operation between them, and thus, the preceding query would look for articles with either the `impact`, `crater` or `lunar` words. If you instead want to perform an AND, surround the words you want to be together with double quotes:

```js
db.articles.find({"$text": { "$search": "\"impact\" \"crater\" lunar"}})
```

The preceding query would look for `(impact AND crater) OR lunar`. Also, if you want to look for a verbatim match on a phrase you surround it in double quotes.

## Result metadata
Every result of a text search has associated metadata that is left out by default, but you can include it by using the `$meta` operator, for example, you can get the relevance score on each match by doing:

```js
db.articles.find({
  $text: { $search: "\"impact crater\" lunar"},
  { title: 1, score: {$meta: "textScore" }}
})
```

## Locale indexing
You can also make the indexes specific to some locales by adding the `default_language` option:

```js
db.users.createIndex({
  "profil": "text",
  "intéréts": "text"
}, {
  "default_language": "french",
})
```
