# Config resource
The equivalent of a Kubernetes' [[config-map]], these can be mounted into many containers to externalize configuration from the images.

### Example
In a [[docker-compose]], or [[docker-stacks]] file, use the top-level key to specify a configuration:

```yaml
configs:
  env_specific_config:
    file: ./api/config/config.yml
```

Then you can mount it into a service by doing

```yaml
services:
  api:
    ...
    configs:
      - source: env_specific_config
        target: /config/config.yaml
        uid: '1000'
        gid: '1000'
        mode: 0400
```

## Config resources are immutable
You can't remove a config resource that's in use, and it gets embedded into the service so you can't change it in runtime. Therefore the only option is to remove the container and recreate it with a different config resource under a different name.
