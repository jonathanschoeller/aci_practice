# ACI Practice

## Prerequisites
1. Install [Docker Desktop for Windows](https://docs.docker.com/docker-for-windows/install/).
2. Create an Azure resource group and an Azure docker registry, making note of the `loginServer`
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
