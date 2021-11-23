# github-action-azure-spiceai-runtime


## Usage

The aml-workspace action will create spiceai runtime in azure 


This repository contains a GitHub Action for creating a [spiceai]() runtime, You can later use this context to  deploy your trained models, You can also use this action to create a new runtime, if you provide the appropriate parameters. 




github action to create spiceai runtime in azure apps 

az group create --name {resource-group} --location {location}


az ad sp create-for-rbac --name {service-principal-name} \
                         --role contributor \
                         --scopes /subscriptions/{subscription-id}/resourceGroups/{resource-group} \
                         --sdk-auth

put creds in secrets


