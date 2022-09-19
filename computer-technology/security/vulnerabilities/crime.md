# CRIME (CVE-2012-4929)
*Compression Ratio Info-leak Made Easy*

It's a vulnerability discovered in the HTTPS and SPDY protocols: an attacker adds data to a request and observes whether the compressed and encrypted payload is smaller, which means that it had overlapping data with the original content. This can be used to steal secret session cookies.
