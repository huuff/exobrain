# Chained Builds
A solution to [[source-to-image]] problems, specifically to that of having to bundle build tools with the runtime image. A chained build consists of a source-to-image (S2I) build, which creates the runtime artifact (like a binary executable) and that artifact is then picked up from the image by a second build.
