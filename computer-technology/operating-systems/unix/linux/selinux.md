# Security-Enhanced Linux (SELinux)
A [[linux-security-modules|Linux Security Module]] that allows constraining processes to certain files or actions depending on which *domain* they run.

## History
Even though SELinux belongs to Red Hat now, it's *very important* to note that the project was originally developed (and subsequently open-sourced) by the National Security Agency (NSA)

## `-Z` flag
You can add this flag to commands like `ls` and `ps` to check their associated SELinux security context.
