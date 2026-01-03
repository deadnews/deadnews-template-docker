FROM busybox:1.37.0-musl@sha256:b259afe60d4b88dbdb31908ca9524ef5308afd01aea17f4ce44ddb3c6a882929
LABEL maintainer="deadnews <deadnewsgit@gmail.com>"

USER nobody:nobody
HEALTHCHECK NONE

CMD ["echo", "Hello, World!"]
