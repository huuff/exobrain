# Connection Preface
HTTP/2 clients send a short preface to ensure that the peer they talk to is able to process HTTP/2. This preface is:

```
0x505249202a20485454502f322e300d0a0d0a534d0d0a0d0a
```

Or, decoded:

```
PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n
```

The objective is to provide a message that kind of looks like HTTP/1, but that any HTTP/1 server will fail to process, so only an HTTP/2 server can accept. Apparently the PRI and SM parts are a cultural reference to US's government PRISM espionage program.

Knowing this has been useful to me in the past, as I saw servers erroring out on this message made me realize they were HTTP/2-uncapable talking to HTTP/1 clients.
