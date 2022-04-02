# Dangling image
A dangling image is one that is tagged as `<none>:<none>`. It can happen when an image is built with the same tag as a previous one, Docker removes the tag from the old one and assings it to the new one.

You can remove all dangling images by running `docker image prune`
