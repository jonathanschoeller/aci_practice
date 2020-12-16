# ACI Practice

## Prerequisites
1. Install [Docker Desktop for Windows](https://docs.docker.com/docker-for-windows/install/).
2. Install Azure CLI
   ```powershell
   Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi; Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet'; rm .\AzureCLI.msi
   ```
3. Create an Azure resource group and an Azure docker registry, making note of the `loginServer`
   ```Batchfile
   docker-compose run create_resource_group
   docker-compose run create_docker_registry
## Deploy
1. Build and publish image
   ```Batchfile
   LOGIN_SERVER=$loginServer ./bin/publish
   ```
2. Login and deploy
   ```Batchfile
   LOGIN_SERVER=$loginServer docker-compose run deploy
   ```
