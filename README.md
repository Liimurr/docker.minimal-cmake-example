# Prerequisites
## For Windows
- DockerEngine
- To allow the docker container to access the internet, add the following to `DockerDesktop > Settings > Docker Engine`:
```json
  "dns": ["1.1.1.1"]
```

# Build
use `run_ubuntu.sh` or `run_windows.bat` depending on your operating system to start the container.
from inside the container run `app/build-and-run.ps1`

# See Also
- https://learn.microsoft.com/en-us/visualstudio/install/import-export-installation-configurations?view=vs-2022#use-a-configuration-file-to-initialize-the-contents-of-a-layout
- https://learn.microsoft.com/en-us/visualstudio/install/use-command-line-parameters-to-install-visual-studio?view=vs-2022