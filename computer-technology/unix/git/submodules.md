---
tags: definition
---

# Submodules
Submodules are a way of including a full git repository inside another one, tying the version of the child repository to the one of the parent repository. It can be used as a primitive form of dependency management, by including the full source code of your dependency inside the dependant project's source code.

### Adding a submodule
Just run `git submodule add «url»`. This will create a new directory with the name of the repository that's a full clone of that repository. The configuration of the path and url of the child repository will be stored in a `.gitmodules` file.
