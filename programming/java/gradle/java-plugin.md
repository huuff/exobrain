# Java plugin
Introduces all of the necessary setup to compile, test and package a Java project. It adds:
* Some conventions (set by Maven?) such as putting all source files in `src/main/java` and tests in `src/test/java`
* Some [[configuration]]s like `implementation` and `compile`
* Appropriately ordered tasks to run the whole build pipeline for the java build process (`compileJava`, `test`, `check`, `build`)
