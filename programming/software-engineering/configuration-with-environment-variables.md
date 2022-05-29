# Configuration with environment variables
The [[twelve-factor-app]] says configuration must be done with environment variables. However, there can be much better alternatives, considering:

* They are fundamentally untyped
* To change them, an application must be restarted
* It might be hard finding where an environment variable comes from, and even then, it might have been overriden. For example an environment variable defined in a dockerfile might be overriden in a kubernetes resource.
