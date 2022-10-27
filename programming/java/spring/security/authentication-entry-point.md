# `AuthenticationEntryPoint`
This interface is named in an unintuitive way: it's the one that gets called by `ExceptionTranslationManager` to handle `AccessDeniedException` and `AuthenticationException`. Therefore, it's only used to give a suitable response to an authentication failure, such as populating the [[www-authenticate]] header.

It contains a single `commence` method that takes an `HttpServletRequest`, an `HttpServletResponse` and the `AuthenticationException` that caused it to be called.
