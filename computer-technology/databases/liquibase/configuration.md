# Configuration
[[liquibase]] has the irritating habit of using [[java]]-specific address schemes for [[driver]]s and URLs (maybe even more things). This is pretty confusing since you have to know that Liquibase is made in Java to use it. Otherwise you'd be surprised why the [[postgresql]] driver is `org.postgresql.Driver` instead of just `postgresql`
