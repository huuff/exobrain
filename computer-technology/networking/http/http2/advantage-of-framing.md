# The advantage of framing in HTTP/2
HTTP/2 is a [[http2-layers|framed protocol]], and as such, it indicates the length of each field before transmitting it, contrary to HTTP/1, in which one has to read all content until a `CRLF` is reached to decide it's over.

This has several benefits:
* Without it, you can only have a single message on the wire and read it until finished.
* It's unclear how much memory the parsing will require a priori, what buffers to allocate, etc.
