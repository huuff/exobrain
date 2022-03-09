# Quotes are optional in most queries
I find myself struggling with building correct JSONs every time I make a query. However, it turns out MongoDB doesn't really need quotes everywhere, only for some specific cases such as when using dot notation, e.g. not `{ movies.title: 1 }` but ` { "movies.title": 1}`
