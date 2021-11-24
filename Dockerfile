FROM mcr.microsoft.com/azure-cli:latest

RUN apk add jq

#  entrypoint.sh
COPY code/entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh 

#  entrypoint
ENTRYPOINT ["/entrypoint.sh"]