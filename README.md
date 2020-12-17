# ACI Practice

## Prerequisites
1. Install [Docker Desktop for Windows](https://docs.docker.com/docker-for-windows/install/).
2. Install Azure CLI
   ```Batchfile
   Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi; Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet'; rm .\AzureCLI.msi
   ```
## Deploy
* Deploy everything
   ```Batchfile
   ./bin/deploy_all
   ```
   To deploy to a different resource group named `different`
   ```Batchfile
   RESOURCE_GROUP_NAME=different ./bin/deploy_all
   ```
* Deploy just the docker image
   ```Batchfile
   ./bin/publish_and_deploy
   ```

## Run Locally
```Batchfile
docker-composes run base
```

## Launching a shell in the dev environment
```Batchfile
docker-compose run dev
```
