FROM kong:1.0.3-alpine

# We need to set session_secret so OIDC can function properly
ENV KONG_NGINX_PROXY_SET "$$session_secret c3BlY2lhbC1rb25n"

# bash is necessary for the wait-for-stop script
RUN apk add --update bash

COPY wait-for-stop.sh /wait-for-stop.sh
RUN chmod +x /wait-for-stop.sh

COPY special /special

# install kong OpenID Connect plugin
RUN luarocks install kong-oidc
