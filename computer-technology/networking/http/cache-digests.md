# Cache digests
A proprosal to add the ability for browsers to send a digest (e.g., a [[bloom-filter]]) of its cache. This way the server can check wether the browser has some specific resource cached, and use it to decide wether to [[http2/server-push|push it]]. I think this proposal has been abandoned by now.
