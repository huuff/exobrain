---
tags: how-to
---

# `CorsWebFilter`
The easiest way I've found for managing CORS using the [[functional-web-framework]] without Spring Security:

```kotlin
@Bean
// TODO: More secure
fun corsFilter(): CorsWebFilter {

    val config = CorsConfiguration()

    // Possibly...
    // config.applyPermitDefaultValues()

    config.allowCredentials = true
    config.addAllowedOrigin("http://example.com")
    config.addAllowedHeader("*")
    config.addAllowedMethod("*")

    val source = UrlBasedCorsConfigurationSource().apply {
        registerCorsConfiguration("/**", config)
    }
    return CorsWebFilter(source)
}
```
