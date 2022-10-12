# Redirect support
*This is true as of OpenAPI 3.0.3*

OpenAPI's redirect support is pretty lame. Even though you can specify that there's a redirect, there's no way to specify anything about what that redirect does (e.g. what the link it redirects to returns, what it takes, what other operation in the spec it corresponds to...). The only thing you can do is to specify that you're returning and redirect, and that it has a `Location` header, but nothing else.

Some sources:
* [This SO answer](https://stackoverflow.com/a/70463412/15768984)
* [The Github issue it links to](https://github.com/OAI/OpenAPI-Specification/issues/2512)
