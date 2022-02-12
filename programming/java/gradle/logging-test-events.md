---
tags: how-to
---

# Print a summary of test results
By default, Gradle will not print any information regarding how many tests were run or how many passed if all of them passed (only if one test failed will the report be printed). You can enable more logging by adding the following to your build script:

```groovy
test {
  testLogging {
    events 'started', 'passed', 'skipped', 'failed'
  }
}
```
