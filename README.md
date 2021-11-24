# github-action-azure-spiceai-runtime


## Usage

The spiceai-runtime-azure action will create spiceai runtime in azure container instance


This repository contains a GitHub Action for creating a [spiceai]() runtime, You can later use this context to  deploy your trained models, You can also use this action to create a new runtime, if you provide the appropriate parameters. 


## Inputs

| Input | Required | Default | Description |
| ----- | -------- | ------- | ----------- |
| azure_credentials | x | - | Output of `az ad sp create-for-rbac --name <your-sp-name> --role contributor --scopes /subscriptions/<your-subscriptionId>/resourceGroups/<your-rg> `. This should be stored in your secrets |
| resource_group | x | - | resource group where the instance will be deployed|
| dns_name | x | - | dns name of the where the runtime will be deployed |


github action to create spiceai runtime in azure container instances  

`az group create --name {resource-group} --location {location}`


`az ad sp create-for-rbac --name {service-principal-name} \`
                         `--role contributor \`
                         `--scopes /subscriptions/{subscription-id}/resourceGroups/{resource-group} \`
                         `--sdk-auth`

    


