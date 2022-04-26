# Starter (a.k.a. Starter Pack)
These are templates on which to build your [[chart]]s. When using `helm create --starter` we can specify a starter to use to create the initial sturcture of our chart.

Any chart can be a starter. The only difference between a chart and a starter is that starters contain a dynamic reference to the chart's name as `<CHARTNAME>`. In order for a starter to be available to `helm create` it must be in the `$HELM_DATA_HOME/starters` directory. (Find it by running `helm env HELM_DATA_HOME`)

Note that a starter requires a `Chart.yaml` like any other chart, but it'll be overwritten by the generator.

### Example
Suppose you have a simple `ConfigMap` chart:

```yaml
apiVersion: v1
kind: ConfigMap
metadata:
  name: {{ include "mychart.fullname" . }}
  labels:
    {{- include "mychart.labels" . | nindent 4 }}
data:
  hello: {{ .Values.hello | quote }}
```

You can convert it into a starter like:

```yaml
apiVersion: v1
kind: ConfigMap
metadata:
  name: {{ include "<CHARTNAME>.fullname" . }}
  labels:
    {{- include "<CHARTNAME>.labels" . | nindent 4 }}
data:
  hello: {{ .Values.hello | quote }}
```


