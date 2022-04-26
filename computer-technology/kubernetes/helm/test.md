# Testing Helm [[chart]]s
Helm provides a [[hook]] for running tests on [[charts]] (the `test` hook). This hook is executed when running the `helm test «installation name»`. Note that you need to install the chart before testing it. Tests usually live in the `tests` directory of the chart.

==I assume that tests run a command in a container and they are considered successful if they exit with a zero exit code==

### Example
This is kind of like the default test created for [[nginx]] with the `helm create` command. It makes a request to the service to check whether it works.

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: "{{ include "booster.fullname" . }}-test-connection"
  labels:
    {{- include "booster.labels" . | nindent 4 }}
  annotations:
    "helm.sh/hook": test
spec:
  containers:
    - name: wget
      image: busybox
      command: ['wget']
      args: ['{{ include "booster.fullname" . }}:{{ .Values.service.port }}']
  restartPolicy: Never
```

## Chart Testing Tool
The chart testing tool allows running tests with a variety of [[values]]. The different values with which you want to test live in the `ci` directory of the chart, with names that conform to the glob `*-values.yaml` for each profile you want to test such as `full-values.yaml` or `minimal-values.yaml`. If you don't want to ship these with your chart you can add them to the `.helmignore` file.
