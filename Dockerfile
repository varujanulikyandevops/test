FROM alpine:3.14
RUN mkdir -p /app
RUN apk add --no-cache bash curl jq
ARG MY_JSON_SECRET
RUN echo "$MY_JSON_SECRET" > /app/config.json
CMD ["cat", "/app/config.json"]

