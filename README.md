# github-action-azure-spiceai-runtime
github action to create spiceai runtime in azure apps 

az group create --name {resource-group} --location {location}


az ad sp create-for-rbac --name {service-principal-name} \
                         --role contributor \
                         --scopes /subscriptions/{subscription-id}/resourceGroups/{resource-group} \
                         --sdk-auth

put creds in secrets


