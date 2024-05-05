#Requires -PSEdition Core

if ($IsWindows) { $ROOT_WORKSPACE_DIR = 'c:/app' } else { $ROOT_WORKSPACE_DIR = '/app' }
if ($IsWindows) { $COMPOSE_FILE = 'compose.windows.yml' } else { $COMPOSE_FILE = 'compose.ubuntu.yml' }
docker compose -f $COMPOSE_FILE run cmake pwsh -File "$ROOT_WORKSPACE_DIR/build-and-run.ps1"