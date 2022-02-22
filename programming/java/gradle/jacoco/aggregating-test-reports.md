---
tags: how-to
---

# Aggregate JaCoCo test reports
(Valid for Gradle 7.4)

* You have to apply the `jacoco` plugin to all the subprojects and make its task finalize the test task.
* You have to create a separate project for aggregating the reports of the other projects
* You have to basically copy-paste this incantation and don't think much about it

```kotlin
plugins {
    id("jacoco-report-aggregation")
    // All other plugins your projects need to be built
}

repositories {
    mavenCentral()
}

dependencies {
    jacocoAggregation(project(":<subp roject name>"))
    // All other subprojects whose coverage you want to aggregate
}

reporting {
    reports {
        val codeCoverageReport by creating(JacocoCoverageReport::class) {
            testType.set(TestSuiteType.UNIT_TEST)
        }
    }
}

tasks.check {
    dependsOn(tasks.named<JacocoReport>("testCodeCoverageReport"))
}

```
