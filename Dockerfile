FROM busybox:1.37.0-musl@sha256:5b9c2e4df019f56a2cbb0d7b748208c44cc77c03f793ae1d4bdbdf3e41b044cd
LABEL maintainer="deadnews <deadnewsgit@gmail.com>"

USER nobody:nobody
HEALTHCHECK NONE

CMD ["echo", "Hello, World!"]
