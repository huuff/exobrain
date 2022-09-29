# Header
Headers are the primary way of HTTP of adding metadata for request/responses. The specification allows for custom headers such as those used [[webdav]]. Headers were added for HTTP/1.0.

### Concatenation
When there are multiple lines of the same header, these are combined into a single one, with values concatenated, separated by commas.

#### Example
```
Example-Field: Foo, Bar
Example-Field: Baz
```

Is concatenated into

```
Example-Field: Foo, Bar, Baz
```
