FROM node:16.3-alpine as builder

RUN npm i -g openapi-to-postmanv2

FROM node:16.3-alpine
COPY --from=builder /usr/local/lib/ /usr/local/lib/
COPY --from=builder /usr/local/bin/ /usr/local/bin/

ENTRYPOINT [ "openapi2postmanv2" ]
