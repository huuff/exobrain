# Content negotiation
A main feature of HTTP that allows a client and server to negotiate what kinds/types/versions of data they can trade, for example:

|Type                |Request          |Response          |
|--------------------|-----------------|------------------|
|Media               |`Accept`         |`Content-Type`    |
|Internationalization|`Accept-Language`|`Content-Language`|
|Charset             |`Accept-Charset` |`Content-Type`    |
|Encoding            |`Accept-Encoding`|`Content-Encoding`|
