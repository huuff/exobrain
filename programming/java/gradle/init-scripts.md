# `~/.gradle/init.d`
Gradle will run any script under `~/.gradle/init.d` as long as it has the `gradle` extension.

## Example
Using a init script with `build-announcements`, we can apply the plugin to all projects on gradle initialization. Put the following into `.gradle/init.d/build-announcements.gradle`

```gradle
gradle.projectLoaded { Gradle gradle ->
  gradle.rootProject {
    apply plugin: "build-announcements"
  }
}
```
