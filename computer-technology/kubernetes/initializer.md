# Initializer
It's useful for forcing policies or injecting defaults by providing a list of preinitialization tasks, stored in the object's metadata. Custom initializer controllers whose names are equal to the task perform these, and, only when all initializers have run, does the pod become visible to regular controllers.
