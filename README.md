# For Windows
- To allow the docker container to access the internet, add the following to `DockerDesktop > Settings > Docker Engine`:
```json
  "dns": ["1.1.1.1"]
```

# Build
Use build-and-run.ps1 from the root directory to start a docker image and build the cmake project

# See Also
- https://learn.microsoft.com/en-us/visualstudio/install/import-export-installation-configurations?view=vs-2022#use-a-configuration-file-to-initialize-the-contents-of-a-layout
- https://learn.microsoft.com/en-us/visualstudio/install/use-command-line-parameters-to-install-visual-studio?view=vs-2022