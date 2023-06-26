---
tags: how-to
---

# Signing
1. First, get your GPG keys with `gpg list-keys`
2. Add your key to your git configuration with `git config --global user.signingkey «key id»`

### Signing commits
Just use the `-S` flag to `git commit` every time to sign the commit

### Signing tags
Use the `-s` flag to create an annotaged [[git/tag]] instead of `-a`.

### Verifying
You need the signer's public key in your keyring in order to verify any signatures:

* You can verify a tag's signature with `git tag -v «tag»`
* You can see whether commits in the log are signed with `git log --show-signature`
* You can tell `git merge` or `git pull` to verify all signatures before merging with `git merge --verify-signatures`
