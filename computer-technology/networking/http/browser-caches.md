# Browsers caches
There are several different types of caches in a web browser:

* *Image cache*: Is a very simple short-lived cache that prevents the browser from downloading the same image twice (such as in the same page). It's cleared when the user browses away from the page.
* *Preload cache*: Is another short-lived cache for [[http/link|preloaded resources]]. It's also single-paged, and also cleared when the user browsers away. It does only work for the same domain.
* [[service-worker|Service workers]]: These act as middlemen between the browser and the server.
* *Main cache*: The main cache of the browser. It's on-disk, persistent and has a maximum size that's used for all domains.
* *HTTP/2 push cache*: It's where the [[http2/server-push]] (no longer used) puts its resources. Since the main cache is checked before this one, this means that even a pushed resource might be ignored if there is a cached version available.
