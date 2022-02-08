# Build phases
Running a Gradle build passes through three phases:
* **Initialization**: Determines which [[project]]s belong in the build and create the implicit `Project` instances.
* **Configuration**: The project objects are configured and build scripts are executed.
* **Execution**: The set of [[task]]s to executed is determined, and the tasks implementations are executed.
