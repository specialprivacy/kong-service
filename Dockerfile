FROM kong:2.8.1
USER root

# install kong OpenID Connect plugin
RUN luarocks install kong-oidc
