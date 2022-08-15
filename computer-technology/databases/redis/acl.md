# ACL
Since Redis 6 there's some authentication mechanisms more complex than the simple [[requirepass]] directive.

ACL has very special syntax such as

`ACL SETUSER «username» ON «pattern of accessible keys» +«commands» >«password»`

Some syntax quirks:
* `>` specifies a plaintext password
* `#` specifies a hashed password
* `ON/OFF` specifies whether this user is enabled/disabled
* `+` indicates allowed commands
* `-` means disallowed commands
* `@` is for groups of things (users, commands?) I believe. Like [[redis/dangerous-commands|`@dangerous`]]
