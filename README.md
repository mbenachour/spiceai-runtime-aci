# spiceai-runtime-aci


## Usage

The spiceai-runtime-azure action will create spiceai runtime in azure container instance


This repository contains a GitHub Action for creating a [spiceai]() runtime, You can later use this context to  deploy your trained models, You can also use this action to create a new runtime, if you provide the appropriate parameters. 


## Inputs

| Input | Required | Default | Description |
| ----- | -------- | ------- | ----------- |
| azure_credentials | x | - | Output of `az ad sp create-for-rbac --name <your-sp-name> --role contributor --scopes /subscriptions/<your-subscriptionId>/resourceGroups/<your-rg> `. This should be stored in your secrets |
| resource_group | x | - | resource group where the instance will be deployed|
| dns_name | x | - | dns name of the where the runtime will be deployed |


## Output

| Output |  Description |
| ----- |  ----------- |
| fqdn | dns name for spiceai runtime |


## Usage 


### 1. Setting up the required secrets

A service principal needs to be generated for authentication and getting access to your Azure subscription. I suggest adding a service principal with contributor rights to a new resource group or to the one where you have deployed your existing Azure runtime.

open a terminal and run  :

```sh

# login to azure 
az login 

# Replace {service-principal-name}, {subscription-id} and {resource-group} with your 
# Azure subscription id and resource group name and any name for your service principle
az ad sp create-for-rbac --name {service-principal-name} \
                         --role contributor \
                         --scopes /subscriptions/{subscription-id}/resourceGroups/{resource-group} 
                         
```

this will generate a service principal :

```sh
{
  "appId": "....",
  "displayName": "....",
  "name": "....",
  "password": "....",
  "tenant": "...."
}
```


Add this JSON output as [a secret](https://help.github.com/en/actions/configuring-and-managing-workflows/creating-and-storing-encrypted-secrets#creating-encrypted-secrets) with the name `AZURE_CREDENTIALS` in your GitHub repository:

<p align="center">
  <img src="docs/images/secrets.png" alt="GitHub Template repository" width="700"/>
</p>

To do so, click on the Settings tab in your repository, then click on Secrets and finally add the new secret with the name `AZURE_CREDENTIALS` to your repository.

Please follow [this link](https://help.github.com/en/actions/configuring-and-managing-workflows/creating-and-storing-encrypted-secrets#creating-encrypted-secrets) for more details. 



github action to create spiceai runtime in azure container instances  

`az group create --name {resource-group} --location {location}`


`az ad sp create-for-rbac --name {service-principal-name} \`
                         `--role contributor \`
                         `--scopes /subscriptions/{subscription-id}/resourceGroups/{resource-group} \`
                         `--sdk-auth`




