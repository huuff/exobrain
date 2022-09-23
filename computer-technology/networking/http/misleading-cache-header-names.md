# Cache header options are misleading
* `no-cache` doesn't mean not to cache... but to revalidate the cached response before serving it. Actually, it's `no-store` what prevents the response from being cached alltogether.
* `must-revalidate` does not mean a resource must be revalidated, but that a local copy must be used if it's younger than the provided `max-age`, and revalidated otherwise.
