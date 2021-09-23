FROM node:16.3-alpine

RUN npm i -g openapi-to-postmanv2

ENTRYPOINT [ "openapi2postmanv2" ]
