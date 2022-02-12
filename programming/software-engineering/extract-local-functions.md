---
tags: tip
---

# Prefer extracting a local function to an external one
In the following cases:
* You have a long function and want to break it into smaller ones with more descriptive names
* Your function contains repeated logic and want to extract it to reuse it

You might reach for an extract function/method refactoring to tidy up the code. Actually, unless this logic is shared by other functions, a local function provides a much better alternative to an external one:
* If you extract a function then, while reading your code you'll have to find the function that contains the extracted logic. Using local functions means that that logic is just right there in the caller function
* Also, if you extract a method, then you have an extra private method that it's only related to the one it was extracted from, which decreases cohesion. Using a local function, you don't clutter the class.

==TODO: add an example==
