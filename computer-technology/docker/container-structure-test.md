# Container Structure Test
A tool from Google to run tests on images to verify that they are correct.

### Example
The following test validates that the image has the required version of java

```yaml
schemaVersion: "2.0.0"

commandTests:
  - name: "java version"
    command: "java"
    args: [ "-version" ]
    exitCode: 0
    # The command will print the following to stderr
    expectedError: [ "OpenJDK Runtime Environment.*build 11\\.*"]
```
