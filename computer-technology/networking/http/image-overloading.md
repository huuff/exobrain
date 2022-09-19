---
tags: caveat
---

# Image overloading
==Actually, I've only read this term in the *Learning HTTP/2* book, but I haven't found any other mentions of it==

A practice browsers do of downscaling images to fit them to the display. It may be troublesome to serve high-resolution images when the client's device is not able to fully rendering them, meaning we waste more bandwidth (and have a slower website) for no gain when the client is a smaller device. This is common in [[responsive-web-design]].
