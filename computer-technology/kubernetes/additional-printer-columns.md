# Additional printer columns
By default, when you create a [[crd]], any `kubectl` commands on them such as `get`, only return the name and age of the resource. By populating the `additionalPrinterColumns` field, you can specify what else columns you want to display using [[jsonpath]]
