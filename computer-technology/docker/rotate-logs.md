---
tags: caveat
---

# Enable log rotation
Note that by default, the logs kept by Docker are not rotated. You must explicitly set `--log-opt max-size` and `--log-opt max-file`. These determine the max size of a log file before rotating it and the max number of log files to keep. Note that after enabling these, [[docker-logs]] only shows the logs in the current file.
