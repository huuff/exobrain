# Project
The most coarse-grained building block of Gradle. Every `build.gradle` represents at least one project. It represents an artifact to build (such as a JAR file) or some goal related to build logic, such as deployment.

Every `build.gradle` has an instance of `org.gradle.api.Project` implicitly available in the whole script, and most operations are just methods of it.
