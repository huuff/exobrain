# Role
Roles in Spring Security are simply [[spring/security/authority|authorities]] that start with a `ROLE_` prefix. These are handled by using `hasRole()` and `hasAnyRole()` instead of `hasAuthority()` or `hasAnyAuthority()`. The methods, however, do not take the `ROLE_` prefix, so a `ROLE_ADMIN` role is checked with `hasRole('ADMIN')`.
