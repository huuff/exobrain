# Gradle daemon
Every time a build is initiated some costly operations happen:
* The JVM has to be started
* Gradle dependencies have to be loaded into the class loader
* The project object model has to be constructed

The Gradle daemon helps reduce the startup time by keeping Gradle running in the background and reusing its instance for future invocations.
