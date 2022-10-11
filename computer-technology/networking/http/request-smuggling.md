# Request Smuggling
From RFC 9112, section 11.2:

> Request smuggling ([Linhart]) is a technique that exploits differences in protocol parsing among various recipients to hide additional requests (which might otherwise be blocked or disabled by policy) within an apparently harmless request. Like response splitting, request smuggling can lead to a variety of attacks on HTTP usage.
 This specification has introduced new requirements on request parsing, particularly with regard to message framing in Section 6.3, to reduce the effectiveness of request smuggling.

^[Linhart]: https://www.cgisecurity.com/lib/HTTP-Request-Smuggling.pdf
