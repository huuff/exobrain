# `@TestConfiguration`
You can annotate a class with this (an inner static class inside a test works fine) to define a configuration that's only specific for tests, where you can provide test-specific beans, or override beans from the actual, non-test configuration.
