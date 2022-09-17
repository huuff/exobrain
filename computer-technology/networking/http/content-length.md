# `Content-Length`
An essential [[http/header]] that signifies the length of the entity being transmitted. It's required for all messages with entity bodies, unless they use [[chunked-encoding]].

It's essential because without it, when a connection closes abruptly we wouldn't know whether it was an error or the server was just finished sending the entity. ==how does this affect [[http/persistent-connection|persistent connections]]?==
