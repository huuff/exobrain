# Chart
A Helm chart is, essentially, a directory structure that contains Kubernetes' resources defined with [[go-templates]]. The structure is

* `Chart.yaml`: Main chart file. It describes the chart metadata.
* `values.yaml`: Values that will be available for interpolation inside the templates.
* `templates/`: The directory that holds the templates that will be transformed into resources.
* `charts/`: Other charts on which this chart depends.
