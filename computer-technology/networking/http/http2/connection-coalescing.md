# Connection Coalescing
An optimization technique employed by browsers in HTTP/2, where an unused connection can be reused for further requests (coalesced) if the browser detects it is for the same origin, meaning it will skip the overhead of slow starts and handshakes.
