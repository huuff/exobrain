---
tags: definition
---

# HTTP Header Injection
Occurs when you include unsanitized user input in HTTP response headers. This would allow a user to inject a carriage return (`\r\n`) to add another header with contents of their will.

## Mitigations
* [[input-sanitization]]
