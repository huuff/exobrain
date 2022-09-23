# HTTP Caching Patterns

### Imutable content + long `max-age`
```
Cache-Control: max-age=31536000
```

For immutable content, caching it for a very long time gives a high speed improvement. Instead of setting an estimated `max-age` for an unlikely change, you can resort to [[cache-busting]] techniques. For example, you can version your resources: `stylesheet-v1.css` and `stylesheet-v2.css`

### Mutable content, always server validated
```
Cache-Control: no-cache
```

Usually you don't want to risk setting even a low `max-age` for a resource that's likely to change (e.g. 10 minutes). A likely problem is that the user caches several of these resources at different times, their caches get out of sync and some old versions taken from the cache while newer ones get served by the origin. For example, having a new HTML site with an old, cached, CSS means you'll have a pretty broken site.

### Reference
[Caching best practices](https://jakearchibald.com/2016/caching-best-practices/)
