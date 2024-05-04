# Prerequisites
## For Windows
- DockerEngine
- To allow the docker container to access the internet, add the following to `DockerDesktop > Settings > Docker Engine`:
```json
  "dns": ["1.1.1.1"]
```
## For Ubuntu
- DockerEngine

# Build
use `run_ubuntu.sh` or `run_windows.bat` depending on your operating system to start the container.
from inside the container run `app/build-and-run.ps1`