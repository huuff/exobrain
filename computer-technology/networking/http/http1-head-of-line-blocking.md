# HTTP/1 issues with Head-of-Line blocking
[[head-of-line-blocking]] was a big issue for HTTP/1.0 and HTTP/1.1 servers: if requests are made sequentially, a slow response (for example for a big image) will delay the loading of the entire site.

HTTP/1.1 introduced pipelining, but this didn't solve Head-of-Line blocking, since even though requests are sent through a single connection, they are still sequential, and a slow response will still delay the rest of them.

Browsers solved this issue by making several parallel connections (usually 6), but [[http2]] solved this issue better with framing.
