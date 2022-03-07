# Packaging a Java application
It's mostly impossible. It's real hard to get builds with [[maven]] or [[gradle]] to be really deterministic. There are 2 approaches that I know of:

* Generators, such as `mvn2nix` and `gradle2nix`. These have a lot of corner cases where they won't work, so if you depend on them you have to be ready to submit pull requests and fixes to their code
* Double invoking: Consists on making a derivation that builds the project only to get their dependencies and another to actually build it. This means building twice so it's at least twice as slow as anything else (but actually slower). Also stuff will randomly break so be ready for spurious errors.

I think all Gradle packages in [[nixpkgs]] are built by double-invoking, and seems like the most reliable method, though it's slow and not even that reliable. [Here's a source for the technique](https://fzakaria.com/2020/07/20/packaging-a-maven-application-with-nix.html)
