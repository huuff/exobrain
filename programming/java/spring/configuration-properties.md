# `@ConfigurationProperties`
This annotation allows setting properties through `application.properties` for a class.

### Setting
```java
@Component
@ConfigurationProperties("my.http.client")
@Data
public class MyHttpClient {
  private int port;
  private String host
}
```

The properties `port` and `host` can be set in `application.properties` like

```
my.http.client.host=localhost
my.http.client.port=80
```
