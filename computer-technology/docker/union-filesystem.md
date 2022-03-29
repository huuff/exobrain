# Union filesystem
Docker's secret sauce: A container filesystem is composed of several [[layer]]s on top of each other that appear as a single filesystem to the container.

## Copy on write
The topmost layer is read-write, while the lowers are read-only. When a file is modified on the top layer, it's actually copied onto it from the lower ones, and then, the modified contents shade the original contents.
