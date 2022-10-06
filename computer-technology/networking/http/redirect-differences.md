---
tags: tip
---

# Redirect Differences
There are quite a few 3xx status codes in HTTP and I always find their subtle differences kind of confusing. Below are some explanations I found in RFC 9110:

> Note: In HTTP/1.0, the status codes 301 (Moved Permanently) and 302 (Found) were originally defined as method-preserving ([HTTP/1.0], Section 9.3) to match their implementation at CERN; 303 (See Other) was defined for a redirection that changed its method to GET. However, early user agents split on whether to redirect POST requests as POST (according to then-current specification) or as GET (the safer alternative when redirected to a different site). Prevailing practice eventually converged on changing the method to GET. 307 (Temporary Redirect) and 308 (Permanent Redirect) [RFC7538] were later added to unambiguously indicate method-preserving redirects, and status codes 301 and 302 have been adjusted to allow a POST request to be redirected as GET.

