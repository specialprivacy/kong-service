# Description

This service uses [Kong](https://konghq.com/) in the role of API gateway for the Special platform.

It's responsibilities are the following:
- dispatch external calls to the right service
- handle authentication against Keycloak

# Plugins

The following external plugins are added:
- [Kong OIDC plugin](https://github.com/nokia/kong-oidc)

# Notes
The ENV KONG_NGINX_PROXY_SET needs to set "session_secret" otherwise the OIDC plugin might malfunction. See https://github.com/nokia/kong-oidc/issues/1 for more info.