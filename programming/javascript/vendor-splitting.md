# Vendor splitting
Use [[code-splitting]] to separate our code and the vendor's (libraries, frameworks, etc.)

This will allow us to leverage the browser cache: since our code is likeky to change more frequently than the vendor's, the user can always get a cached version of the vendor's if ours change.
