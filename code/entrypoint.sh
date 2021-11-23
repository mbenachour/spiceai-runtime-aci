#!/bin/sh -e


AZURE_SERVICE_PRINCIPAL_NAME=$(echo $INPUT_AZURE_CREDENTIALS | jq -r '.appId')
AZURE_SECRET=$(echo $INPUT_AZURE_CREDENTIALS | jq  -r '.password')
AZURE_TENANT=$(echo $INPUT_AZURE_CREDENTIALS | jq -r  '.tenant')

az login --service-principal -u $AZURE_SERVICE_PRINCIPAL_NAME -p $AZURE_SECRET --tenant $AZURE_TENANT -o none

response=$(az container create --resource-group $INPUT_RESOURCE_GROUP --name spiceai-runtime --image ghcr.io/spiceai/spiceai --dns-name-label $INPUT_DNS_NAME --ports 8000 )

echo $response |  jq '.ipAddress.fqdn'