# Finalizer
A finalizer is very simply an annotation on an object. Kubernetes marks an object for deletion ==TODO: specify how, I remember it's some field==, but the object won't get deleted until no finalizers remain. Each controller responsible for a finalizer has to inspect the object, do any finalization tasks and then remove the finalizer from it so the deletion process can continue.
