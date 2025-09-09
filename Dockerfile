FROM alpine:3.14
RUN mkdir -p /app
RUN apk add --no-cache bash curl jq
ARG SECRET
RUN echo "$SECRET" > /app/config.json
CMD ["cat", "/app/config.json"]

